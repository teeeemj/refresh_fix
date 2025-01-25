import 'package:freezed_annotation/freezed_annotation.dart';

part 'top_players_resp_model.freezed.dart';
part 'top_players_resp_model.g.dart';

@freezed
class TopPlayersRespModel with _$TopPlayersRespModel {
  const factory TopPlayersRespModel({
    required Map<String, dynamic> errors,
    required TopPlayersData data,
  }) = _TopPlayersRespModel;

  factory TopPlayersRespModel.fromJson(Map<String, dynamic> json) =>
      _$TopPlayersRespModelFromJson(json);
}

@freezed
class TopPlayersData with _$TopPlayersData {
  const factory TopPlayersData({
    required int count,
    String? next,
    String? previous,
    @JsonKey(name: 'results') required List<TopPlayer> results,
  }) = _TopPlayersData;

  factory TopPlayersData.fromJson(Map<String, dynamic> json) =>
      _$TopPlayersDataFromJson(json);
}

@freezed
class TopPlayer with _$TopPlayer {
  const factory TopPlayer({
    int? sex,
    @JsonKey(name: 'season_score') required int seasonScore,
    @JsonKey(name: 'season_place') required int seasonPlace,
    @JsonKey(name: 'phone_number') String? phoneNumber,
    @JsonKey(name: 'birth_date') String? birthDate,
    required String id,
    String? business,
    String? userpic,
    @JsonKey(name: 'is_banker') required bool isBanker,
    @JsonKey(name: 'full_name') required String fullName,
    int? balance,
  }) = _TopPlayer;

  factory TopPlayer.fromJson(Map<String, dynamic> json) =>
      _$TopPlayerFromJson(json);
}
