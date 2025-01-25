part of 'login_bloc.dart';

@freezed
class LoginEvent with _$LoginEvent implements GenericEvent {
  const factory LoginEvent.getStarted({
    required LoginRequestModel reqModel,
  }) = _GetStarted;
}
