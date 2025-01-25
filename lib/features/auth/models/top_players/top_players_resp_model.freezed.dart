// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'top_players_resp_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TopPlayersRespModel _$TopPlayersRespModelFromJson(Map<String, dynamic> json) {
  return _TopPlayersRespModel.fromJson(json);
}

/// @nodoc
mixin _$TopPlayersRespModel {
  Map<String, dynamic> get errors => throw _privateConstructorUsedError;
  TopPlayersData get data => throw _privateConstructorUsedError;

  /// Serializes this TopPlayersRespModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TopPlayersRespModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TopPlayersRespModelCopyWith<TopPlayersRespModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopPlayersRespModelCopyWith<$Res> {
  factory $TopPlayersRespModelCopyWith(
          TopPlayersRespModel value, $Res Function(TopPlayersRespModel) then) =
      _$TopPlayersRespModelCopyWithImpl<$Res, TopPlayersRespModel>;
  @useResult
  $Res call({Map<String, dynamic> errors, TopPlayersData data});

  $TopPlayersDataCopyWith<$Res> get data;
}

/// @nodoc
class _$TopPlayersRespModelCopyWithImpl<$Res, $Val extends TopPlayersRespModel>
    implements $TopPlayersRespModelCopyWith<$Res> {
  _$TopPlayersRespModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TopPlayersRespModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errors = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      errors: null == errors
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as TopPlayersData,
    ) as $Val);
  }

  /// Create a copy of TopPlayersRespModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TopPlayersDataCopyWith<$Res> get data {
    return $TopPlayersDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TopPlayersRespModelImplCopyWith<$Res>
    implements $TopPlayersRespModelCopyWith<$Res> {
  factory _$$TopPlayersRespModelImplCopyWith(_$TopPlayersRespModelImpl value,
          $Res Function(_$TopPlayersRespModelImpl) then) =
      __$$TopPlayersRespModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, dynamic> errors, TopPlayersData data});

  @override
  $TopPlayersDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$TopPlayersRespModelImplCopyWithImpl<$Res>
    extends _$TopPlayersRespModelCopyWithImpl<$Res, _$TopPlayersRespModelImpl>
    implements _$$TopPlayersRespModelImplCopyWith<$Res> {
  __$$TopPlayersRespModelImplCopyWithImpl(_$TopPlayersRespModelImpl _value,
      $Res Function(_$TopPlayersRespModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of TopPlayersRespModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errors = null,
    Object? data = null,
  }) {
    return _then(_$TopPlayersRespModelImpl(
      errors: null == errors
          ? _value._errors
          : errors // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as TopPlayersData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TopPlayersRespModelImpl implements _TopPlayersRespModel {
  const _$TopPlayersRespModelImpl(
      {required final Map<String, dynamic> errors, required this.data})
      : _errors = errors;

  factory _$TopPlayersRespModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TopPlayersRespModelImplFromJson(json);

  final Map<String, dynamic> _errors;
  @override
  Map<String, dynamic> get errors {
    if (_errors is EqualUnmodifiableMapView) return _errors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_errors);
  }

  @override
  final TopPlayersData data;

  @override
  String toString() {
    return 'TopPlayersRespModel(errors: $errors, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopPlayersRespModelImpl &&
            const DeepCollectionEquality().equals(other._errors, _errors) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_errors), data);

  /// Create a copy of TopPlayersRespModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TopPlayersRespModelImplCopyWith<_$TopPlayersRespModelImpl> get copyWith =>
      __$$TopPlayersRespModelImplCopyWithImpl<_$TopPlayersRespModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TopPlayersRespModelImplToJson(
      this,
    );
  }
}

abstract class _TopPlayersRespModel implements TopPlayersRespModel {
  const factory _TopPlayersRespModel(
      {required final Map<String, dynamic> errors,
      required final TopPlayersData data}) = _$TopPlayersRespModelImpl;

  factory _TopPlayersRespModel.fromJson(Map<String, dynamic> json) =
      _$TopPlayersRespModelImpl.fromJson;

  @override
  Map<String, dynamic> get errors;
  @override
  TopPlayersData get data;

  /// Create a copy of TopPlayersRespModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TopPlayersRespModelImplCopyWith<_$TopPlayersRespModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TopPlayersData _$TopPlayersDataFromJson(Map<String, dynamic> json) {
  return _TopPlayersData.fromJson(json);
}

/// @nodoc
mixin _$TopPlayersData {
  int get count => throw _privateConstructorUsedError;
  String? get next => throw _privateConstructorUsedError;
  String? get previous => throw _privateConstructorUsedError;
  @JsonKey(name: 'results')
  List<TopPlayer> get results => throw _privateConstructorUsedError;

  /// Serializes this TopPlayersData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TopPlayersData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TopPlayersDataCopyWith<TopPlayersData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopPlayersDataCopyWith<$Res> {
  factory $TopPlayersDataCopyWith(
          TopPlayersData value, $Res Function(TopPlayersData) then) =
      _$TopPlayersDataCopyWithImpl<$Res, TopPlayersData>;
  @useResult
  $Res call(
      {int count,
      String? next,
      String? previous,
      @JsonKey(name: 'results') List<TopPlayer> results});
}

/// @nodoc
class _$TopPlayersDataCopyWithImpl<$Res, $Val extends TopPlayersData>
    implements $TopPlayersDataCopyWith<$Res> {
  _$TopPlayersDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TopPlayersData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? next = freezed,
    Object? previous = freezed,
    Object? results = null,
  }) {
    return _then(_value.copyWith(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
      previous: freezed == previous
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as String?,
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<TopPlayer>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TopPlayersDataImplCopyWith<$Res>
    implements $TopPlayersDataCopyWith<$Res> {
  factory _$$TopPlayersDataImplCopyWith(_$TopPlayersDataImpl value,
          $Res Function(_$TopPlayersDataImpl) then) =
      __$$TopPlayersDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int count,
      String? next,
      String? previous,
      @JsonKey(name: 'results') List<TopPlayer> results});
}

/// @nodoc
class __$$TopPlayersDataImplCopyWithImpl<$Res>
    extends _$TopPlayersDataCopyWithImpl<$Res, _$TopPlayersDataImpl>
    implements _$$TopPlayersDataImplCopyWith<$Res> {
  __$$TopPlayersDataImplCopyWithImpl(
      _$TopPlayersDataImpl _value, $Res Function(_$TopPlayersDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of TopPlayersData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? next = freezed,
    Object? previous = freezed,
    Object? results = null,
  }) {
    return _then(_$TopPlayersDataImpl(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
      previous: freezed == previous
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as String?,
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<TopPlayer>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TopPlayersDataImpl implements _TopPlayersData {
  const _$TopPlayersDataImpl(
      {required this.count,
      this.next,
      this.previous,
      @JsonKey(name: 'results') required final List<TopPlayer> results})
      : _results = results;

  factory _$TopPlayersDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$TopPlayersDataImplFromJson(json);

  @override
  final int count;
  @override
  final String? next;
  @override
  final String? previous;
  final List<TopPlayer> _results;
  @override
  @JsonKey(name: 'results')
  List<TopPlayer> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'TopPlayersData(count: $count, next: $next, previous: $previous, results: $results)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopPlayersDataImpl &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.next, next) || other.next == next) &&
            (identical(other.previous, previous) ||
                other.previous == previous) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, count, next, previous,
      const DeepCollectionEquality().hash(_results));

  /// Create a copy of TopPlayersData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TopPlayersDataImplCopyWith<_$TopPlayersDataImpl> get copyWith =>
      __$$TopPlayersDataImplCopyWithImpl<_$TopPlayersDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TopPlayersDataImplToJson(
      this,
    );
  }
}

abstract class _TopPlayersData implements TopPlayersData {
  const factory _TopPlayersData(
          {required final int count,
          final String? next,
          final String? previous,
          @JsonKey(name: 'results') required final List<TopPlayer> results}) =
      _$TopPlayersDataImpl;

  factory _TopPlayersData.fromJson(Map<String, dynamic> json) =
      _$TopPlayersDataImpl.fromJson;

  @override
  int get count;
  @override
  String? get next;
  @override
  String? get previous;
  @override
  @JsonKey(name: 'results')
  List<TopPlayer> get results;

  /// Create a copy of TopPlayersData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TopPlayersDataImplCopyWith<_$TopPlayersDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TopPlayer _$TopPlayerFromJson(Map<String, dynamic> json) {
  return _TopPlayer.fromJson(json);
}

/// @nodoc
mixin _$TopPlayer {
  int? get sex => throw _privateConstructorUsedError;
  @JsonKey(name: 'season_score')
  int get seasonScore => throw _privateConstructorUsedError;
  @JsonKey(name: 'season_place')
  int get seasonPlace => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone_number')
  String? get phoneNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'birth_date')
  String? get birthDate => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String? get business => throw _privateConstructorUsedError;
  String? get userpic => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_banker')
  bool get isBanker => throw _privateConstructorUsedError;
  @JsonKey(name: 'full_name')
  String get fullName => throw _privateConstructorUsedError;
  int? get balance => throw _privateConstructorUsedError;

  /// Serializes this TopPlayer to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TopPlayer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TopPlayerCopyWith<TopPlayer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopPlayerCopyWith<$Res> {
  factory $TopPlayerCopyWith(TopPlayer value, $Res Function(TopPlayer) then) =
      _$TopPlayerCopyWithImpl<$Res, TopPlayer>;
  @useResult
  $Res call(
      {int? sex,
      @JsonKey(name: 'season_score') int seasonScore,
      @JsonKey(name: 'season_place') int seasonPlace,
      @JsonKey(name: 'phone_number') String? phoneNumber,
      @JsonKey(name: 'birth_date') String? birthDate,
      String id,
      String? business,
      String? userpic,
      @JsonKey(name: 'is_banker') bool isBanker,
      @JsonKey(name: 'full_name') String fullName,
      int? balance});
}

/// @nodoc
class _$TopPlayerCopyWithImpl<$Res, $Val extends TopPlayer>
    implements $TopPlayerCopyWith<$Res> {
  _$TopPlayerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TopPlayer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sex = freezed,
    Object? seasonScore = null,
    Object? seasonPlace = null,
    Object? phoneNumber = freezed,
    Object? birthDate = freezed,
    Object? id = null,
    Object? business = freezed,
    Object? userpic = freezed,
    Object? isBanker = null,
    Object? fullName = null,
    Object? balance = freezed,
  }) {
    return _then(_value.copyWith(
      sex: freezed == sex
          ? _value.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as int?,
      seasonScore: null == seasonScore
          ? _value.seasonScore
          : seasonScore // ignore: cast_nullable_to_non_nullable
              as int,
      seasonPlace: null == seasonPlace
          ? _value.seasonPlace
          : seasonPlace // ignore: cast_nullable_to_non_nullable
              as int,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      birthDate: freezed == birthDate
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as String?,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      business: freezed == business
          ? _value.business
          : business // ignore: cast_nullable_to_non_nullable
              as String?,
      userpic: freezed == userpic
          ? _value.userpic
          : userpic // ignore: cast_nullable_to_non_nullable
              as String?,
      isBanker: null == isBanker
          ? _value.isBanker
          : isBanker // ignore: cast_nullable_to_non_nullable
              as bool,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      balance: freezed == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TopPlayerImplCopyWith<$Res>
    implements $TopPlayerCopyWith<$Res> {
  factory _$$TopPlayerImplCopyWith(
          _$TopPlayerImpl value, $Res Function(_$TopPlayerImpl) then) =
      __$$TopPlayerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? sex,
      @JsonKey(name: 'season_score') int seasonScore,
      @JsonKey(name: 'season_place') int seasonPlace,
      @JsonKey(name: 'phone_number') String? phoneNumber,
      @JsonKey(name: 'birth_date') String? birthDate,
      String id,
      String? business,
      String? userpic,
      @JsonKey(name: 'is_banker') bool isBanker,
      @JsonKey(name: 'full_name') String fullName,
      int? balance});
}

/// @nodoc
class __$$TopPlayerImplCopyWithImpl<$Res>
    extends _$TopPlayerCopyWithImpl<$Res, _$TopPlayerImpl>
    implements _$$TopPlayerImplCopyWith<$Res> {
  __$$TopPlayerImplCopyWithImpl(
      _$TopPlayerImpl _value, $Res Function(_$TopPlayerImpl) _then)
      : super(_value, _then);

  /// Create a copy of TopPlayer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sex = freezed,
    Object? seasonScore = null,
    Object? seasonPlace = null,
    Object? phoneNumber = freezed,
    Object? birthDate = freezed,
    Object? id = null,
    Object? business = freezed,
    Object? userpic = freezed,
    Object? isBanker = null,
    Object? fullName = null,
    Object? balance = freezed,
  }) {
    return _then(_$TopPlayerImpl(
      sex: freezed == sex
          ? _value.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as int?,
      seasonScore: null == seasonScore
          ? _value.seasonScore
          : seasonScore // ignore: cast_nullable_to_non_nullable
              as int,
      seasonPlace: null == seasonPlace
          ? _value.seasonPlace
          : seasonPlace // ignore: cast_nullable_to_non_nullable
              as int,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      birthDate: freezed == birthDate
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as String?,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      business: freezed == business
          ? _value.business
          : business // ignore: cast_nullable_to_non_nullable
              as String?,
      userpic: freezed == userpic
          ? _value.userpic
          : userpic // ignore: cast_nullable_to_non_nullable
              as String?,
      isBanker: null == isBanker
          ? _value.isBanker
          : isBanker // ignore: cast_nullable_to_non_nullable
              as bool,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      balance: freezed == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TopPlayerImpl implements _TopPlayer {
  const _$TopPlayerImpl(
      {this.sex,
      @JsonKey(name: 'season_score') required this.seasonScore,
      @JsonKey(name: 'season_place') required this.seasonPlace,
      @JsonKey(name: 'phone_number') this.phoneNumber,
      @JsonKey(name: 'birth_date') this.birthDate,
      required this.id,
      this.business,
      this.userpic,
      @JsonKey(name: 'is_banker') required this.isBanker,
      @JsonKey(name: 'full_name') required this.fullName,
      this.balance});

  factory _$TopPlayerImpl.fromJson(Map<String, dynamic> json) =>
      _$$TopPlayerImplFromJson(json);

  @override
  final int? sex;
  @override
  @JsonKey(name: 'season_score')
  final int seasonScore;
  @override
  @JsonKey(name: 'season_place')
  final int seasonPlace;
  @override
  @JsonKey(name: 'phone_number')
  final String? phoneNumber;
  @override
  @JsonKey(name: 'birth_date')
  final String? birthDate;
  @override
  final String id;
  @override
  final String? business;
  @override
  final String? userpic;
  @override
  @JsonKey(name: 'is_banker')
  final bool isBanker;
  @override
  @JsonKey(name: 'full_name')
  final String fullName;
  @override
  final int? balance;

  @override
  String toString() {
    return 'TopPlayer(sex: $sex, seasonScore: $seasonScore, seasonPlace: $seasonPlace, phoneNumber: $phoneNumber, birthDate: $birthDate, id: $id, business: $business, userpic: $userpic, isBanker: $isBanker, fullName: $fullName, balance: $balance)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopPlayerImpl &&
            (identical(other.sex, sex) || other.sex == sex) &&
            (identical(other.seasonScore, seasonScore) ||
                other.seasonScore == seasonScore) &&
            (identical(other.seasonPlace, seasonPlace) ||
                other.seasonPlace == seasonPlace) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.birthDate, birthDate) ||
                other.birthDate == birthDate) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.business, business) ||
                other.business == business) &&
            (identical(other.userpic, userpic) || other.userpic == userpic) &&
            (identical(other.isBanker, isBanker) ||
                other.isBanker == isBanker) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.balance, balance) || other.balance == balance));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      sex,
      seasonScore,
      seasonPlace,
      phoneNumber,
      birthDate,
      id,
      business,
      userpic,
      isBanker,
      fullName,
      balance);

  /// Create a copy of TopPlayer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TopPlayerImplCopyWith<_$TopPlayerImpl> get copyWith =>
      __$$TopPlayerImplCopyWithImpl<_$TopPlayerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TopPlayerImplToJson(
      this,
    );
  }
}

abstract class _TopPlayer implements TopPlayer {
  const factory _TopPlayer(
      {final int? sex,
      @JsonKey(name: 'season_score') required final int seasonScore,
      @JsonKey(name: 'season_place') required final int seasonPlace,
      @JsonKey(name: 'phone_number') final String? phoneNumber,
      @JsonKey(name: 'birth_date') final String? birthDate,
      required final String id,
      final String? business,
      final String? userpic,
      @JsonKey(name: 'is_banker') required final bool isBanker,
      @JsonKey(name: 'full_name') required final String fullName,
      final int? balance}) = _$TopPlayerImpl;

  factory _TopPlayer.fromJson(Map<String, dynamic> json) =
      _$TopPlayerImpl.fromJson;

  @override
  int? get sex;
  @override
  @JsonKey(name: 'season_score')
  int get seasonScore;
  @override
  @JsonKey(name: 'season_place')
  int get seasonPlace;
  @override
  @JsonKey(name: 'phone_number')
  String? get phoneNumber;
  @override
  @JsonKey(name: 'birth_date')
  String? get birthDate;
  @override
  String get id;
  @override
  String? get business;
  @override
  String? get userpic;
  @override
  @JsonKey(name: 'is_banker')
  bool get isBanker;
  @override
  @JsonKey(name: 'full_name')
  String get fullName;
  @override
  int? get balance;

  /// Create a copy of TopPlayer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TopPlayerImplCopyWith<_$TopPlayerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
