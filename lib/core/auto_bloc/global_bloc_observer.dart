import 'package:dashboard_mvvm_arch/core/auto_bloc/auto_bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GlobalBlocObserver extends BlocObserver {
  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    if (bloc is! AutoBloc) return;

    // Ignores error except then [ResponseError]
    if (error is ResponseError && error.message != null) {
      if (!bloc.isClosed) {
        bloc.add(GenericEvent.responseError(error.message!));
      }
    } else if (error is DioException) {
      final List<DioExceptionType> list = [
        DioExceptionType.connectionTimeout,
        DioExceptionType.connectionError,
        DioExceptionType.receiveTimeout,
        DioExceptionType.sendTimeout,
        DioExceptionType.unknown,
      ];
      if (list.contains(error.type)) {
        bloc.add(GenericEvent.responseError(error.message ?? 'DioError '));
      }
    }

    super.onError(bloc, error, stackTrace);
  }
}
