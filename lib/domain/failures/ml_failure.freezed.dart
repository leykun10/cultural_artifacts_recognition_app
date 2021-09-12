// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'ml_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MlFailureTearOff {
  const _$MlFailureTearOff();

  LoadingFailed failedToLoad() {
    return const LoadingFailed();
  }

  PredictionFailed failedToPredict() {
    return const PredictionFailed();
  }
}

/// @nodoc
const $MlFailure = _$MlFailureTearOff();

/// @nodoc
mixin _$MlFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() failedToLoad,
    required TResult Function() failedToPredict,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? failedToLoad,
    TResult Function()? failedToPredict,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingFailed value) failedToLoad,
    required TResult Function(PredictionFailed value) failedToPredict,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingFailed value)? failedToLoad,
    TResult Function(PredictionFailed value)? failedToPredict,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MlFailureCopyWith<$Res> {
  factory $MlFailureCopyWith(MlFailure value, $Res Function(MlFailure) then) =
      _$MlFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$MlFailureCopyWithImpl<$Res> implements $MlFailureCopyWith<$Res> {
  _$MlFailureCopyWithImpl(this._value, this._then);

  final MlFailure _value;
  // ignore: unused_field
  final $Res Function(MlFailure) _then;
}

/// @nodoc
abstract class $LoadingFailedCopyWith<$Res> {
  factory $LoadingFailedCopyWith(
          LoadingFailed value, $Res Function(LoadingFailed) then) =
      _$LoadingFailedCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingFailedCopyWithImpl<$Res> extends _$MlFailureCopyWithImpl<$Res>
    implements $LoadingFailedCopyWith<$Res> {
  _$LoadingFailedCopyWithImpl(
      LoadingFailed _value, $Res Function(LoadingFailed) _then)
      : super(_value, (v) => _then(v as LoadingFailed));

  @override
  LoadingFailed get _value => super._value as LoadingFailed;
}

/// @nodoc

class _$LoadingFailed implements LoadingFailed {
  const _$LoadingFailed();

  @override
  String toString() {
    return 'MlFailure.failedToLoad()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoadingFailed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() failedToLoad,
    required TResult Function() failedToPredict,
  }) {
    return failedToLoad();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? failedToLoad,
    TResult Function()? failedToPredict,
    required TResult orElse(),
  }) {
    if (failedToLoad != null) {
      return failedToLoad();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingFailed value) failedToLoad,
    required TResult Function(PredictionFailed value) failedToPredict,
  }) {
    return failedToLoad(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingFailed value)? failedToLoad,
    TResult Function(PredictionFailed value)? failedToPredict,
    required TResult orElse(),
  }) {
    if (failedToLoad != null) {
      return failedToLoad(this);
    }
    return orElse();
  }
}

abstract class LoadingFailed implements MlFailure {
  const factory LoadingFailed() = _$LoadingFailed;
}

/// @nodoc
abstract class $PredictionFailedCopyWith<$Res> {
  factory $PredictionFailedCopyWith(
          PredictionFailed value, $Res Function(PredictionFailed) then) =
      _$PredictionFailedCopyWithImpl<$Res>;
}

/// @nodoc
class _$PredictionFailedCopyWithImpl<$Res> extends _$MlFailureCopyWithImpl<$Res>
    implements $PredictionFailedCopyWith<$Res> {
  _$PredictionFailedCopyWithImpl(
      PredictionFailed _value, $Res Function(PredictionFailed) _then)
      : super(_value, (v) => _then(v as PredictionFailed));

  @override
  PredictionFailed get _value => super._value as PredictionFailed;
}

/// @nodoc

class _$PredictionFailed implements PredictionFailed {
  const _$PredictionFailed();

  @override
  String toString() {
    return 'MlFailure.failedToPredict()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is PredictionFailed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() failedToLoad,
    required TResult Function() failedToPredict,
  }) {
    return failedToPredict();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? failedToLoad,
    TResult Function()? failedToPredict,
    required TResult orElse(),
  }) {
    if (failedToPredict != null) {
      return failedToPredict();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingFailed value) failedToLoad,
    required TResult Function(PredictionFailed value) failedToPredict,
  }) {
    return failedToPredict(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingFailed value)? failedToLoad,
    TResult Function(PredictionFailed value)? failedToPredict,
    required TResult orElse(),
  }) {
    if (failedToPredict != null) {
      return failedToPredict(this);
    }
    return orElse();
  }
}

abstract class PredictionFailed implements MlFailure {
  const factory PredictionFailed() = _$PredictionFailed;
}
