part of 'top_players_bloc.dart';

@freezed
class TopPlayersState with _$TopPlayersState {
  const factory TopPlayersState.initial() = TopPlayersStateInitial;
  const factory TopPlayersState.loading() = TopPlayersStateLoading;
  const factory TopPlayersState.error(String message) = TopPlayersStateError;
  const factory TopPlayersState.success(TopPlayersRespModel res) =
      TopPlayersStateSuccess;
}
