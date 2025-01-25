import 'package:flutter_bloc/flutter_bloc.dart';
export 'package:freezed_annotation/freezed_annotation.dart';

part 'response_error.dart';

abstract class AutoBloc<Event extends GenericEvent, State>
    extends Bloc<GenericEvent, State> implements BlocEventSink<GenericEvent> {
  AutoBloc(super.initialState) {
    on<ResponseErrorEvent>((event, emit) {
      emit(errorFactory(event.message));
    });
  }

  State errorFactory(String message);
}

class GenericEvent {
  factory GenericEvent.responseError(String message) =>
      ResponseErrorEvent(message);

  factory GenericEvent.reset() => const ResetEvent();
}

class ResponseErrorEvent implements GenericEvent {
  const ResponseErrorEvent(this.message);

  final String message;
}

class ResetEvent implements GenericEvent {
  const ResetEvent();
}
