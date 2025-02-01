// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'top_players_resp_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TopPlayersRespModelImpl _$$TopPlayersRespModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TopPlayersRespModelImpl(
      errors: json['errors'] as Map<String, dynamic>,
      data: TopPlayersData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TopPlayersRespModelImplToJson(
        _$TopPlayersRespModelImpl instance) =>
    <String, dynamic>{
      'errors': instance.errors,
      'data': instance.data,
    };

_$TopPlayersDataImpl _$$TopPlayersDataImplFromJson(Map<String, dynamic> json) =>
    _$TopPlayersDataImpl(
      count: (json['count'] as num?)?.toInt(),
      next: json['next'] as String?,
      previous: json['previous'] as String?,
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => TopPlayer.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TopPlayersDataImplToJson(
        _$TopPlayersDataImpl instance) =>
    <String, dynamic>{
      'count': instance.count,
      'next': instance.next,
      'previous': instance.previous,
      'results': instance.results,
    };

_$TopPlayerImpl _$$TopPlayerImplFromJson(Map<String, dynamic> json) =>
    _$TopPlayerImpl(
      sex: (json['sex'] as num?)?.toInt(),
      seasonScore: (json['season_score'] as num).toInt(),
      seasonPlace: (json['season_place'] as num).toInt(),
      phoneNumber: json['phone_number'] as String?,
      birthDate: json['birth_date'] as String?,
      id: json['id'] as String,
      business: json['business'] as String?,
      userpic: json['userpic'] as String?,
      isBanker: json['is_banker'] as bool,
      fullName: json['full_name'] as String,
      balance: (json['balance'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$TopPlayerImplToJson(_$TopPlayerImpl instance) =>
    <String, dynamic>{
      'sex': instance.sex,
      'season_score': instance.seasonScore,
      'season_place': instance.seasonPlace,
      'phone_number': instance.phoneNumber,
      'birth_date': instance.birthDate,
      'id': instance.id,
      'business': instance.business,
      'userpic': instance.userpic,
      'is_banker': instance.isBanker,
      'full_name': instance.fullName,
      'balance': instance.balance,
    };
