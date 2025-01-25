part of 'top_players_bloc.dart';

@freezed
class TopPlayersEvent with _$TopPlayersEvent implements GenericEvent {
  const factory TopPlayersEvent.getStarted() = _GetStarted;
}
