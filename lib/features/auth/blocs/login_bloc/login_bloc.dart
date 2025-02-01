import 'dart:developer';

import 'package:dashboard_mvvm_arch/core/auto_bloc/auto_bloc.dart';
import 'package:dashboard_mvvm_arch/core/storage/shared_pref_storage.dart';
import 'package:dashboard_mvvm_arch/features/auth/models/login_request_model/login_request_model.dart';
import 'package:dashboard_mvvm_arch/features/auth/repositories/auth_remote_repository.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends AutoBloc<LoginEvent, LoginState> {
  final _authRemoteRepository = AuthRemoteRepository();

  LoginBloc() : super(const LoginState.initial()) {
    on<_GetStarted>((event, emit) async {
      emit(const LoginState.loading());
      try {
        final storage = await SharedPrefStorage.getInstance(); // Инициализация
        print('before access_token ${await storage.getString('access_token')}');

        final response =
            await _authRemoteRepository.login(reqModel: event.reqModel);
        await storage.setString('access_token', response.access);

        try {
          await storage.setString('refresh_token', response.refresh);
          log('Refresh token saved: ${response.refresh}');
        } catch (e) {
          log('Failed to save refresh token: $e');
        }

        print('access_token ${await storage.getString('access_token')}');
        log('refresh_token ${await storage.getString('refresh_token')}');
        emit(const LoginState.success());
      } catch (error) {
        add(GenericEvent.responseError(error.toString()));
      }
    });
  }

  @override
  LoginState errorFactory(String message) {
    return LoginState.error(message);
  }
}
