import 'package:dashboard_mvvm_arch/core/storage/shared_pref_storage.dart';
import 'package:dio/dio.dart';
import 'package:dashboard_mvvm_arch/core/auto_bloc/auto_bloc.dart';
import 'package:dashboard_mvvm_arch/core/constants/server_constants.dart';
import 'package:dashboard_mvvm_arch/core/router/router.dart';

/// Returns a globally configured Dio instance
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

/// Returns a Dio that does NOT add any auth token
/// and does NOT handle refresh logic.
Dio createAnonymousDio() {
  return createDio();
}

/// Returns a Dio that DOES add auth token
/// and handles refresh token logic.
Dio createAuthorizedDio() {
  final dio = createDio();
  final appRouter = AppRouter();

  dio.interceptors.add(
    InterceptorsWrapper(
      onRequest: (options, handler) async {
        // Pull the token from secure storage
        final token = SharedPrefStorage.instance.getString('access_token');
        if (token != null && token.isNotEmpty) {
          options.headers["Authorization"] = 'Bearer $token';
        }
        return handler.next(options);
      },
      onError: (error, handler) async {
        // If we get a 401, try to refresh the token
        if (error.response?.statusCode == 401) {
          final newAccessToken = await _refreshToken();
          if (newAccessToken != null) {
            // Update the Dio's authorization header
            dio.options.headers["Authorization"] = 'Bearer $newAccessToken';

            // Retry the failed request with the new token
            final cloneReq = await dio.fetch(error.requestOptions);
            return handler.resolve(cloneReq);
          } else {
            // If refresh fails
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
Future<String?> _refreshToken() async {
  try {
    final dio = createDio();
    final refreshToken = SharedPrefStorage.instance.getString('refresh_token');

    final response = await dio.post(
      '/moses/token/refresh/',
      data: {'refresh': refreshToken},
    );

    final newAccessToken = response.data['access_token'];

    // Store the new token
    SharedPrefStorage.instance.setString('access_token', newAccessToken);
    return newAccessToken;
  } catch (exception) {
    // If refresh fails, clear all tokens
    SharedPrefStorage.instance.clear();
    return null;
  }
}

void validateResponse(
  Response response, {
  List<int> successCodes = const [200, 201, 202, 203, 204, 205],
}) {
  if (successCodes.contains(response.statusCode)) return;

  String errorMessage = response.data.toString();
  if (response.data is Map && response.data.containsKey('errors')) {
    final errors = response.data['errors'];

    // Check for the format in the provided function
    if (errors is Map && errors.containsKey('')) {
      final errorList = errors[''];
      if (errorList is List && errorList.isNotEmpty) {
        final firstError = errorList.first;
        if (firstError is Map && firstError.containsKey('error_code')) {
          errorMessage = firstError['error_code'];
        }
      }
    }

    // Check for the format from the image
    else if (errors is Map && errors.containsKey('code')) {
      errorMessage = errors['code'];
    }
  }

  throw ResponseError(
    message: errorMessage,
    statusCode: response.statusCode,
    data: response.data,
  );
}
