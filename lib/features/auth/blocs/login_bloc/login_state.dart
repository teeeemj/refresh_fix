part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial() = LoginStateInitial;
  const factory LoginState.loading() = LoginStateLoading;
  const factory LoginState.error(String message) = LoginStateError;
  const factory LoginState.success() = LoginStateSuccess;
}
