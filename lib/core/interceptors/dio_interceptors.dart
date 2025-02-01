import 'dart:developer';

import 'package:dashboard_mvvm_arch/core/storage/shared_pref_storage.dart';
import 'package:dio/dio.dart';
import 'package:dashboard_mvvm_arch/core/auto_bloc/auto_bloc.dart';
import 'package:dashboard_mvvm_arch/core/constants/server_constants.dart';
import 'package:dashboard_mvvm_arch/core/router/router.dart';

Dio createDio() {
  return Dio(
    BaseOptions(
      baseUrl: ServerConstants.serverURL,
      contentType: Headers.formUrlEncodedContentType,
      receiveTimeout: const Duration(milliseconds: 60000),
      connectTimeout: const Duration(milliseconds: 60000),
      sendTimeout: const Duration(milliseconds: 60000),
      validateStatus: (status) => status != null && status <= 503,
    ),
  );
}

Dio createAnonymousDio() {
  return createDio();
}

Dio createAuthorizedDio() {
  log('createAuthorizedDio: method called'); // Лог для отладки

  final dio = createDio();
  final appRouter = AppRouter();

  dio.interceptors.add(
    InterceptorsWrapper(
      onRequest: (options, handler) async {
        final storage = await SharedPrefStorage.getInstance();
        final token = await storage.getString('access_token');
        if (token != null && token.isNotEmpty) {
          options.headers["Authorization"] = 'Bearer $token';
          log('Authorization header updated: $token');
        }
        return handler.next(options);
      },
      onError: (error, handler) async {
        if (error.response?.statusCode == 401) {
          log('Unauthorized, attempting to refresh token...');
          final newAccessToken = await _refreshToken();
          if (newAccessToken != null) {
            error.requestOptions.headers["Authorization"] =
                "Bearer $newAccessToken";
            final cloneReq = await dio.fetch(error.requestOptions);
            return handler.resolve(cloneReq);
          } else {
            log('Token refresh failed, redirecting to login.');
            appRouter.replaceAll([const LoginRoute()]);
          }
        }
        return handler.next(error);
      },
    ),
  );

  return dio;
}

/// Handles token refresh logic
bool _isRefreshing = false;

Future<String?> _refreshToken() async {
  if (_isRefreshing) {
    await Future.delayed(const Duration(milliseconds: 500));
    final storage = await SharedPrefStorage.getInstance();
    return storage.getString('access_token');
  }

  _isRefreshing = true;

  try {
    log('Refreshing token...');
    final dio = createDio();
    final storage = await SharedPrefStorage.getInstance();
    final refreshToken = await storage.getString('refresh_token');

    if (refreshToken == null || refreshToken.isEmpty) {
      log('Refresh token is missing or empty.');
      return null;
    }

    final response = await dio.post(
      '${ServerConstants.serverURL}/moses/token/refresh/',
      data: {'refresh': refreshToken},
    );

    if (response.data is Map && response.data['data'] != null) {
      final newAccessToken = response.data['data']['access'];
      response.requestOptions.headers['Authorization'] =
          'Bearer $newAccessToken';
      await storage.setString('access_token', newAccessToken);
      log('Access token refreshed successfully: $newAccessToken');
      return newAccessToken;
    } else {
      log('Unexpected response format: ${response.data}');
      return null;
    }
  } catch (exception) {
    log('Exception while refreshing token: $exception');
    final storage = await SharedPrefStorage.getInstance();
    await storage.clear();
    return null;
  } finally {
    _isRefreshing = false;
  }
}

Future<Response> validateResponse(
  Response response, {
  List<int> successCodes = const [200, 201, 202, 203, 204, 205],
}) async {
  if (successCodes.contains(response.statusCode)) return response;

  if (response.statusCode == 401) {
    log('Unauthorized, attempting to refresh token...');
    final newAccessToken = await _refreshToken();

    if (newAccessToken != null) {
      try {
        final dio = createDio();
        response.requestOptions.headers['Authorization'] =
            'Bearer $newAccessToken';
        final retryResponse = await dio.request(
          response.requestOptions.path,
          options: Options(
            method: response.requestOptions.method,
            headers: response.requestOptions.headers,
          ),
          data: response.requestOptions.data,
          queryParameters: response.requestOptions.queryParameters,
        );

        if (successCodes.contains(retryResponse.statusCode)) {
          log('Request successful after token refresh.');
          return retryResponse;
        }
      } catch (retryError) {
        log('Retry failed: $retryError');
      }
    }
  }

  throw ResponseError(
    message: response.data.toString(),
    statusCode: response.statusCode,
    data: response.data,
  );
}
