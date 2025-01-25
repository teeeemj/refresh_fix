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
        print(
            'before access_token ${SharedPrefStorage.instance.getString('access_token')}');
        final response =
            await _authRemoteRepository.login(reqModel: event.reqModel);
        await SharedPrefStorage.instance
            .setString('access_token', response.access);
        await SharedPrefStorage.instance
            .setString('refresh_token', response.refresh);
        print(
            'access_token ${SharedPrefStorage.instance.getString('access_token')}');
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
