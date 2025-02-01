// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'top_players_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TopPlayersEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getStarted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetStarted value) getStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetStarted value)? getStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetStarted value)? getStarted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopPlayersEventCopyWith<$Res> {
  factory $TopPlayersEventCopyWith(
          TopPlayersEvent value, $Res Function(TopPlayersEvent) then) =
      _$TopPlayersEventCopyWithImpl<$Res, TopPlayersEvent>;
}

/// @nodoc
class _$TopPlayersEventCopyWithImpl<$Res, $Val extends TopPlayersEvent>
    implements $TopPlayersEventCopyWith<$Res> {
  _$TopPlayersEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TopPlayersEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetStartedImplCopyWith<$Res> {
  factory _$$GetStartedImplCopyWith(
          _$GetStartedImpl value, $Res Function(_$GetStartedImpl) then) =
      __$$GetStartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetStartedImplCopyWithImpl<$Res>
    extends _$TopPlayersEventCopyWithImpl<$Res, _$GetStartedImpl>
    implements _$$GetStartedImplCopyWith<$Res> {
  __$$GetStartedImplCopyWithImpl(
      _$GetStartedImpl _value, $Res Function(_$GetStartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of TopPlayersEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetStartedImpl implements _GetStarted {
  const _$GetStartedImpl();

  @override
  String toString() {
    return 'TopPlayersEvent.getStarted()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetStartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getStarted,
  }) {
    return getStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getStarted,
  }) {
    return getStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getStarted,
    required TResult orElse(),
  }) {
    if (getStarted != null) {
      return getStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetStarted value) getStarted,
  }) {
    return getStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetStarted value)? getStarted,
  }) {
    return getStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetStarted value)? getStarted,
    required TResult orElse(),
  }) {
    if (getStarted != null) {
      return getStarted(this);
    }
    return orElse();
  }
}

abstract class _GetStarted implements TopPlayersEvent {
  const factory _GetStarted() = _$GetStartedImpl;
}

/// @nodoc
mixin _$TopPlayersState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(TopPlayersRespModel res) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(TopPlayersRespModel res)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(TopPlayersRespModel res)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TopPlayersStateInitial value) initial,
    required TResult Function(TopPlayersStateLoading value) loading,
    required TResult Function(TopPlayersStateError value) error,
    required TResult Function(TopPlayersStateSuccess value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TopPlayersStateInitial value)? initial,
    TResult? Function(TopPlayersStateLoading value)? loading,
    TResult? Function(TopPlayersStateError value)? error,
    TResult? Function(TopPlayersStateSuccess value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TopPlayersStateInitial value)? initial,
    TResult Function(TopPlayersStateLoading value)? loading,
    TResult Function(TopPlayersStateError value)? error,
    TResult Function(TopPlayersStateSuccess value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopPlayersStateCopyWith<$Res> {
  factory $TopPlayersStateCopyWith(
          TopPlayersState value, $Res Function(TopPlayersState) then) =
      _$TopPlayersStateCopyWithImpl<$Res, TopPlayersState>;
}

/// @nodoc
class _$TopPlayersStateCopyWithImpl<$Res, $Val extends TopPlayersState>
    implements $TopPlayersStateCopyWith<$Res> {
  _$TopPlayersStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TopPlayersState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$TopPlayersStateInitialImplCopyWith<$Res> {
  factory _$$TopPlayersStateInitialImplCopyWith(
          _$TopPlayersStateInitialImpl value,
          $Res Function(_$TopPlayersStateInitialImpl) then) =
      __$$TopPlayersStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TopPlayersStateInitialImplCopyWithImpl<$Res>
    extends _$TopPlayersStateCopyWithImpl<$Res, _$TopPlayersStateInitialImpl>
    implements _$$TopPlayersStateInitialImplCopyWith<$Res> {
  __$$TopPlayersStateInitialImplCopyWithImpl(
      _$TopPlayersStateInitialImpl _value,
      $Res Function(_$TopPlayersStateInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of TopPlayersState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$TopPlayersStateInitialImpl implements TopPlayersStateInitial {
  const _$TopPlayersStateInitialImpl();

  @override
  String toString() {
    return 'TopPlayersState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopPlayersStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(TopPlayersRespModel res) success,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(TopPlayersRespModel res)? success,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(TopPlayersRespModel res)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TopPlayersStateInitial value) initial,
    required TResult Function(TopPlayersStateLoading value) loading,
    required TResult Function(TopPlayersStateError value) error,
    required TResult Function(TopPlayersStateSuccess value) success,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TopPlayersStateInitial value)? initial,
    TResult? Function(TopPlayersStateLoading value)? loading,
    TResult? Function(TopPlayersStateError value)? error,
    TResult? Function(TopPlayersStateSuccess value)? success,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TopPlayersStateInitial value)? initial,
    TResult Function(TopPlayersStateLoading value)? loading,
    TResult Function(TopPlayersStateError value)? error,
    TResult Function(TopPlayersStateSuccess value)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class TopPlayersStateInitial implements TopPlayersState {
  const factory TopPlayersStateInitial() = _$TopPlayersStateInitialImpl;
}

/// @nodoc
abstract class _$$TopPlayersStateLoadingImplCopyWith<$Res> {
  factory _$$TopPlayersStateLoadingImplCopyWith(
          _$TopPlayersStateLoadingImpl value,
          $Res Function(_$TopPlayersStateLoadingImpl) then) =
      __$$TopPlayersStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TopPlayersStateLoadingImplCopyWithImpl<$Res>
    extends _$TopPlayersStateCopyWithImpl<$Res, _$TopPlayersStateLoadingImpl>
    implements _$$TopPlayersStateLoadingImplCopyWith<$Res> {
  __$$TopPlayersStateLoadingImplCopyWithImpl(
      _$TopPlayersStateLoadingImpl _value,
      $Res Function(_$TopPlayersStateLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of TopPlayersState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$TopPlayersStateLoadingImpl implements TopPlayersStateLoading {
  const _$TopPlayersStateLoadingImpl();

  @override
  String toString() {
    return 'TopPlayersState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopPlayersStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(TopPlayersRespModel res) success,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(TopPlayersRespModel res)? success,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(TopPlayersRespModel res)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TopPlayersStateInitial value) initial,
    required TResult Function(TopPlayersStateLoading value) loading,
    required TResult Function(TopPlayersStateError value) error,
    required TResult Function(TopPlayersStateSuccess value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TopPlayersStateInitial value)? initial,
    TResult? Function(TopPlayersStateLoading value)? loading,
    TResult? Function(TopPlayersStateError value)? error,
    TResult? Function(TopPlayersStateSuccess value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TopPlayersStateInitial value)? initial,
    TResult Function(TopPlayersStateLoading value)? loading,
    TResult Function(TopPlayersStateError value)? error,
    TResult Function(TopPlayersStateSuccess value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class TopPlayersStateLoading implements TopPlayersState {
  const factory TopPlayersStateLoading() = _$TopPlayersStateLoadingImpl;
}

/// @nodoc
abstract class _$$TopPlayersStateErrorImplCopyWith<$Res> {
  factory _$$TopPlayersStateErrorImplCopyWith(_$TopPlayersStateErrorImpl value,
          $Res Function(_$TopPlayersStateErrorImpl) then) =
      __$$TopPlayersStateErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$TopPlayersStateErrorImplCopyWithImpl<$Res>
    extends _$TopPlayersStateCopyWithImpl<$Res, _$TopPlayersStateErrorImpl>
    implements _$$TopPlayersStateErrorImplCopyWith<$Res> {
  __$$TopPlayersStateErrorImplCopyWithImpl(_$TopPlayersStateErrorImpl _value,
      $Res Function(_$TopPlayersStateErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of TopPlayersState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$TopPlayersStateErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TopPlayersStateErrorImpl implements TopPlayersStateError {
  const _$TopPlayersStateErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'TopPlayersState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopPlayersStateErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of TopPlayersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TopPlayersStateErrorImplCopyWith<_$TopPlayersStateErrorImpl>
      get copyWith =>
          __$$TopPlayersStateErrorImplCopyWithImpl<_$TopPlayersStateErrorImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(TopPlayersRespModel res) success,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(TopPlayersRespModel res)? success,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(TopPlayersRespModel res)? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TopPlayersStateInitial value) initial,
    required TResult Function(TopPlayersStateLoading value) loading,
    required TResult Function(TopPlayersStateError value) error,
    required TResult Function(TopPlayersStateSuccess value) success,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TopPlayersStateInitial value)? initial,
    TResult? Function(TopPlayersStateLoading value)? loading,
    TResult? Function(TopPlayersStateError value)? error,
    TResult? Function(TopPlayersStateSuccess value)? success,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TopPlayersStateInitial value)? initial,
    TResult Function(TopPlayersStateLoading value)? loading,
    TResult Function(TopPlayersStateError value)? error,
    TResult Function(TopPlayersStateSuccess value)? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class TopPlayersStateError implements TopPlayersState {
  const factory TopPlayersStateError(final String message) =
      _$TopPlayersStateErrorImpl;

  String get message;

  /// Create a copy of TopPlayersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TopPlayersStateErrorImplCopyWith<_$TopPlayersStateErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TopPlayersStateSuccessImplCopyWith<$Res> {
  factory _$$TopPlayersStateSuccessImplCopyWith(
          _$TopPlayersStateSuccessImpl value,
          $Res Function(_$TopPlayersStateSuccessImpl) then) =
      __$$TopPlayersStateSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TopPlayersRespModel res});

  $TopPlayersRespModelCopyWith<$Res> get res;
}

/// @nodoc
class __$$TopPlayersStateSuccessImplCopyWithImpl<$Res>
    extends _$TopPlayersStateCopyWithImpl<$Res, _$TopPlayersStateSuccessImpl>
    implements _$$TopPlayersStateSuccessImplCopyWith<$Res> {
  __$$TopPlayersStateSuccessImplCopyWithImpl(
      _$TopPlayersStateSuccessImpl _value,
      $Res Function(_$TopPlayersStateSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of TopPlayersState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? res = null,
  }) {
    return _then(_$TopPlayersStateSuccessImpl(
      null == res
          ? _value.res
          : res // ignore: cast_nullable_to_non_nullable
              as TopPlayersRespModel,
    ));
  }

  /// Create a copy of TopPlayersState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TopPlayersRespModelCopyWith<$Res> get res {
    return $TopPlayersRespModelCopyWith<$Res>(_value.res, (value) {
      return _then(_value.copyWith(res: value));
    });
  }
}

/// @nodoc

class _$TopPlayersStateSuccessImpl implements TopPlayersStateSuccess {
  const _$TopPlayersStateSuccessImpl(this.res);

  @override
  final TopPlayersRespModel res;

  @override
  String toString() {
    return 'TopPlayersState.success(res: $res)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopPlayersStateSuccessImpl &&
            (identical(other.res, res) || other.res == res));
  }

  @override
  int get hashCode => Object.hash(runtimeType, res);

  /// Create a copy of TopPlayersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TopPlayersStateSuccessImplCopyWith<_$TopPlayersStateSuccessImpl>
      get copyWith => __$$TopPlayersStateSuccessImplCopyWithImpl<
          _$TopPlayersStateSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(TopPlayersRespModel res) success,
  }) {
    return success(res);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(TopPlayersRespModel res)? success,
  }) {
    return success?.call(res);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(TopPlayersRespModel res)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(res);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TopPlayersStateInitial value) initial,
    required TResult Function(TopPlayersStateLoading value) loading,
    required TResult Function(TopPlayersStateError value) error,
    required TResult Function(TopPlayersStateSuccess value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TopPlayersStateInitial value)? initial,
    TResult? Function(TopPlayersStateLoading value)? loading,
    TResult? Function(TopPlayersStateError value)? error,
    TResult? Function(TopPlayersStateSuccess value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TopPlayersStateInitial value)? initial,
    TResult Function(TopPlayersStateLoading value)? loading,
    TResult Function(TopPlayersStateError value)? error,
    TResult Function(TopPlayersStateSuccess value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class TopPlayersStateSuccess implements TopPlayersState {
  const factory TopPlayersStateSuccess(final TopPlayersRespModel res) =
      _$TopPlayersStateSuccessImpl;

  TopPlayersRespModel get res;

  /// Create a copy of TopPlayersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TopPlayersStateSuccessImplCopyWith<_$TopPlayersStateSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}
