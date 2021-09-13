// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'image_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ImageFailureTearOff {
  const _$ImageFailureTearOff();

  LoadingError failedLoading() {
    return const LoadingError();
  }

  SavingError failedSaving() {
    return const SavingError();
  }

  ClosingError failedClosing() {
    return const ClosingError();
  }
}

/// @nodoc
const $ImageFailure = _$ImageFailureTearOff();

/// @nodoc
mixin _$ImageFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() failedLoading,
    required TResult Function() failedSaving,
    required TResult Function() failedClosing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? failedLoading,
    TResult Function()? failedSaving,
    TResult Function()? failedClosing,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingError value) failedLoading,
    required TResult Function(SavingError value) failedSaving,
    required TResult Function(ClosingError value) failedClosing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingError value)? failedLoading,
    TResult Function(SavingError value)? failedSaving,
    TResult Function(ClosingError value)? failedClosing,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageFailureCopyWith<$Res> {
  factory $ImageFailureCopyWith(
          ImageFailure value, $Res Function(ImageFailure) then) =
      _$ImageFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$ImageFailureCopyWithImpl<$Res> implements $ImageFailureCopyWith<$Res> {
  _$ImageFailureCopyWithImpl(this._value, this._then);

  final ImageFailure _value;
  // ignore: unused_field
  final $Res Function(ImageFailure) _then;
}

/// @nodoc
abstract class $LoadingErrorCopyWith<$Res> {
  factory $LoadingErrorCopyWith(
          LoadingError value, $Res Function(LoadingError) then) =
      _$LoadingErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingErrorCopyWithImpl<$Res> extends _$ImageFailureCopyWithImpl<$Res>
    implements $LoadingErrorCopyWith<$Res> {
  _$LoadingErrorCopyWithImpl(
      LoadingError _value, $Res Function(LoadingError) _then)
      : super(_value, (v) => _then(v as LoadingError));

  @override
  LoadingError get _value => super._value as LoadingError;
}

/// @nodoc

class _$LoadingError implements LoadingError {
  const _$LoadingError();

  @override
  String toString() {
    return 'ImageFailure.failedLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoadingError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() failedLoading,
    required TResult Function() failedSaving,
    required TResult Function() failedClosing,
  }) {
    return failedLoading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? failedLoading,
    TResult Function()? failedSaving,
    TResult Function()? failedClosing,
    required TResult orElse(),
  }) {
    if (failedLoading != null) {
      return failedLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingError value) failedLoading,
    required TResult Function(SavingError value) failedSaving,
    required TResult Function(ClosingError value) failedClosing,
  }) {
    return failedLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingError value)? failedLoading,
    TResult Function(SavingError value)? failedSaving,
    TResult Function(ClosingError value)? failedClosing,
    required TResult orElse(),
  }) {
    if (failedLoading != null) {
      return failedLoading(this);
    }
    return orElse();
  }
}

abstract class LoadingError implements ImageFailure {
  const factory LoadingError() = _$LoadingError;
}

/// @nodoc
abstract class $SavingErrorCopyWith<$Res> {
  factory $SavingErrorCopyWith(
          SavingError value, $Res Function(SavingError) then) =
      _$SavingErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$SavingErrorCopyWithImpl<$Res> extends _$ImageFailureCopyWithImpl<$Res>
    implements $SavingErrorCopyWith<$Res> {
  _$SavingErrorCopyWithImpl(
      SavingError _value, $Res Function(SavingError) _then)
      : super(_value, (v) => _then(v as SavingError));

  @override
  SavingError get _value => super._value as SavingError;
}

/// @nodoc

class _$SavingError implements SavingError {
  const _$SavingError();

  @override
  String toString() {
    return 'ImageFailure.failedSaving()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SavingError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() failedLoading,
    required TResult Function() failedSaving,
    required TResult Function() failedClosing,
  }) {
    return failedSaving();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? failedLoading,
    TResult Function()? failedSaving,
    TResult Function()? failedClosing,
    required TResult orElse(),
  }) {
    if (failedSaving != null) {
      return failedSaving();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingError value) failedLoading,
    required TResult Function(SavingError value) failedSaving,
    required TResult Function(ClosingError value) failedClosing,
  }) {
    return failedSaving(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingError value)? failedLoading,
    TResult Function(SavingError value)? failedSaving,
    TResult Function(ClosingError value)? failedClosing,
    required TResult orElse(),
  }) {
    if (failedSaving != null) {
      return failedSaving(this);
    }
    return orElse();
  }
}

abstract class SavingError implements ImageFailure {
  const factory SavingError() = _$SavingError;
}

/// @nodoc
abstract class $ClosingErrorCopyWith<$Res> {
  factory $ClosingErrorCopyWith(
          ClosingError value, $Res Function(ClosingError) then) =
      _$ClosingErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$ClosingErrorCopyWithImpl<$Res> extends _$ImageFailureCopyWithImpl<$Res>
    implements $ClosingErrorCopyWith<$Res> {
  _$ClosingErrorCopyWithImpl(
      ClosingError _value, $Res Function(ClosingError) _then)
      : super(_value, (v) => _then(v as ClosingError));

  @override
  ClosingError get _value => super._value as ClosingError;
}

/// @nodoc

class _$ClosingError implements ClosingError {
  const _$ClosingError();

  @override
  String toString() {
    return 'ImageFailure.failedClosing()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ClosingError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() failedLoading,
    required TResult Function() failedSaving,
    required TResult Function() failedClosing,
  }) {
    return failedClosing();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? failedLoading,
    TResult Function()? failedSaving,
    TResult Function()? failedClosing,
    required TResult orElse(),
  }) {
    if (failedClosing != null) {
      return failedClosing();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingError value) failedLoading,
    required TResult Function(SavingError value) failedSaving,
    required TResult Function(ClosingError value) failedClosing,
  }) {
    return failedClosing(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingError value)? failedLoading,
    TResult Function(SavingError value)? failedSaving,
    TResult Function(ClosingError value)? failedClosing,
    required TResult orElse(),
  }) {
    if (failedClosing != null) {
      return failedClosing(this);
    }
    return orElse();
  }
}

abstract class ClosingError implements ImageFailure {
  const factory ClosingError() = _$ClosingError;
}
