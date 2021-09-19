// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'api_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ApiEventTearOff {
  const _$ApiEventTearOff();

  $SendImage sendImage(File image) {
    return $SendImage(
      image,
    );
  }
}

/// @nodoc
const $ApiEvent = _$ApiEventTearOff();

/// @nodoc
mixin _$ApiEvent {
  File get image => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(File image) sendImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(File image)? sendImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function($SendImage value) sendImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function($SendImage value)? sendImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ApiEventCopyWith<ApiEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiEventCopyWith<$Res> {
  factory $ApiEventCopyWith(ApiEvent value, $Res Function(ApiEvent) then) =
      _$ApiEventCopyWithImpl<$Res>;
  $Res call({File image});
}

/// @nodoc
class _$ApiEventCopyWithImpl<$Res> implements $ApiEventCopyWith<$Res> {
  _$ApiEventCopyWithImpl(this._value, this._then);

  final ApiEvent _value;
  // ignore: unused_field
  final $Res Function(ApiEvent) _then;

  @override
  $Res call({
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as File,
    ));
  }
}

/// @nodoc
abstract class $$SendImageCopyWith<$Res> implements $ApiEventCopyWith<$Res> {
  factory $$SendImageCopyWith(
          $SendImage value, $Res Function($SendImage) then) =
      _$$SendImageCopyWithImpl<$Res>;
  @override
  $Res call({File image});
}

/// @nodoc
class _$$SendImageCopyWithImpl<$Res> extends _$ApiEventCopyWithImpl<$Res>
    implements $$SendImageCopyWith<$Res> {
  _$$SendImageCopyWithImpl($SendImage _value, $Res Function($SendImage) _then)
      : super(_value, (v) => _then(v as $SendImage));

  @override
  $SendImage get _value => super._value as $SendImage;

  @override
  $Res call({
    Object? image = freezed,
  }) {
    return _then($SendImage(
      image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as File,
    ));
  }
}

/// @nodoc

class _$$SendImage implements $SendImage {
  const _$$SendImage(this.image);

  @override
  final File image;

  @override
  String toString() {
    return 'ApiEvent.sendImage(image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is $SendImage &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(image);

  @JsonKey(ignore: true)
  @override
  $$SendImageCopyWith<$SendImage> get copyWith =>
      _$$SendImageCopyWithImpl<$SendImage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(File image) sendImage,
  }) {
    return sendImage(image);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(File image)? sendImage,
    required TResult orElse(),
  }) {
    if (sendImage != null) {
      return sendImage(image);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function($SendImage value) sendImage,
  }) {
    return sendImage(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function($SendImage value)? sendImage,
    required TResult orElse(),
  }) {
    if (sendImage != null) {
      return sendImage(this);
    }
    return orElse();
  }
}

abstract class $SendImage implements ApiEvent {
  const factory $SendImage(File image) = _$$SendImage;

  @override
  File get image => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $$SendImageCopyWith<$SendImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ApiStateTearOff {
  const _$ApiStateTearOff();

  Initial initial() {
    return const Initial();
  }

  SendingImage sendingImage() {
    return const SendingImage();
  }

  SendingImageFailed sendingImageFailed() {
    return const SendingImageFailed();
  }

  ObjectDetected objectDetected(List<Artifact> artifacts) {
    return ObjectDetected(
      artifacts,
    );
  }

  NoObjectDetected noObjectDetected() {
    return const NoObjectDetected();
  }
}

/// @nodoc
const $ApiState = _$ApiStateTearOff();

/// @nodoc
mixin _$ApiState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() sendingImage,
    required TResult Function() sendingImageFailed,
    required TResult Function(List<Artifact> artifacts) objectDetected,
    required TResult Function() noObjectDetected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? sendingImage,
    TResult Function()? sendingImageFailed,
    TResult Function(List<Artifact> artifacts)? objectDetected,
    TResult Function()? noObjectDetected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(SendingImage value) sendingImage,
    required TResult Function(SendingImageFailed value) sendingImageFailed,
    required TResult Function(ObjectDetected value) objectDetected,
    required TResult Function(NoObjectDetected value) noObjectDetected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(SendingImage value)? sendingImage,
    TResult Function(SendingImageFailed value)? sendingImageFailed,
    TResult Function(ObjectDetected value)? objectDetected,
    TResult Function(NoObjectDetected value)? noObjectDetected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiStateCopyWith<$Res> {
  factory $ApiStateCopyWith(ApiState value, $Res Function(ApiState) then) =
      _$ApiStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ApiStateCopyWithImpl<$Res> implements $ApiStateCopyWith<$Res> {
  _$ApiStateCopyWithImpl(this._value, this._then);

  final ApiState _value;
  // ignore: unused_field
  final $Res Function(ApiState) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$ApiStateCopyWithImpl<$Res>
    implements $InitialCopyWith<$Res> {
  _$InitialCopyWithImpl(Initial _value, $Res Function(Initial) _then)
      : super(_value, (v) => _then(v as Initial));

  @override
  Initial get _value => super._value as Initial;
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'ApiState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() sendingImage,
    required TResult Function() sendingImageFailed,
    required TResult Function(List<Artifact> artifacts) objectDetected,
    required TResult Function() noObjectDetected,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? sendingImage,
    TResult Function()? sendingImageFailed,
    TResult Function(List<Artifact> artifacts)? objectDetected,
    TResult Function()? noObjectDetected,
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
    required TResult Function(Initial value) initial,
    required TResult Function(SendingImage value) sendingImage,
    required TResult Function(SendingImageFailed value) sendingImageFailed,
    required TResult Function(ObjectDetected value) objectDetected,
    required TResult Function(NoObjectDetected value) noObjectDetected,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(SendingImage value)? sendingImage,
    TResult Function(SendingImageFailed value)? sendingImageFailed,
    TResult Function(ObjectDetected value)? objectDetected,
    TResult Function(NoObjectDetected value)? noObjectDetected,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements ApiState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class $SendingImageCopyWith<$Res> {
  factory $SendingImageCopyWith(
          SendingImage value, $Res Function(SendingImage) then) =
      _$SendingImageCopyWithImpl<$Res>;
}

/// @nodoc
class _$SendingImageCopyWithImpl<$Res> extends _$ApiStateCopyWithImpl<$Res>
    implements $SendingImageCopyWith<$Res> {
  _$SendingImageCopyWithImpl(
      SendingImage _value, $Res Function(SendingImage) _then)
      : super(_value, (v) => _then(v as SendingImage));

  @override
  SendingImage get _value => super._value as SendingImage;
}

/// @nodoc

class _$SendingImage implements SendingImage {
  const _$SendingImage();

  @override
  String toString() {
    return 'ApiState.sendingImage()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SendingImage);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() sendingImage,
    required TResult Function() sendingImageFailed,
    required TResult Function(List<Artifact> artifacts) objectDetected,
    required TResult Function() noObjectDetected,
  }) {
    return sendingImage();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? sendingImage,
    TResult Function()? sendingImageFailed,
    TResult Function(List<Artifact> artifacts)? objectDetected,
    TResult Function()? noObjectDetected,
    required TResult orElse(),
  }) {
    if (sendingImage != null) {
      return sendingImage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(SendingImage value) sendingImage,
    required TResult Function(SendingImageFailed value) sendingImageFailed,
    required TResult Function(ObjectDetected value) objectDetected,
    required TResult Function(NoObjectDetected value) noObjectDetected,
  }) {
    return sendingImage(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(SendingImage value)? sendingImage,
    TResult Function(SendingImageFailed value)? sendingImageFailed,
    TResult Function(ObjectDetected value)? objectDetected,
    TResult Function(NoObjectDetected value)? noObjectDetected,
    required TResult orElse(),
  }) {
    if (sendingImage != null) {
      return sendingImage(this);
    }
    return orElse();
  }
}

abstract class SendingImage implements ApiState {
  const factory SendingImage() = _$SendingImage;
}

/// @nodoc
abstract class $SendingImageFailedCopyWith<$Res> {
  factory $SendingImageFailedCopyWith(
          SendingImageFailed value, $Res Function(SendingImageFailed) then) =
      _$SendingImageFailedCopyWithImpl<$Res>;
}

/// @nodoc
class _$SendingImageFailedCopyWithImpl<$Res>
    extends _$ApiStateCopyWithImpl<$Res>
    implements $SendingImageFailedCopyWith<$Res> {
  _$SendingImageFailedCopyWithImpl(
      SendingImageFailed _value, $Res Function(SendingImageFailed) _then)
      : super(_value, (v) => _then(v as SendingImageFailed));

  @override
  SendingImageFailed get _value => super._value as SendingImageFailed;
}

/// @nodoc

class _$SendingImageFailed implements SendingImageFailed {
  const _$SendingImageFailed();

  @override
  String toString() {
    return 'ApiState.sendingImageFailed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SendingImageFailed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() sendingImage,
    required TResult Function() sendingImageFailed,
    required TResult Function(List<Artifact> artifacts) objectDetected,
    required TResult Function() noObjectDetected,
  }) {
    return sendingImageFailed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? sendingImage,
    TResult Function()? sendingImageFailed,
    TResult Function(List<Artifact> artifacts)? objectDetected,
    TResult Function()? noObjectDetected,
    required TResult orElse(),
  }) {
    if (sendingImageFailed != null) {
      return sendingImageFailed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(SendingImage value) sendingImage,
    required TResult Function(SendingImageFailed value) sendingImageFailed,
    required TResult Function(ObjectDetected value) objectDetected,
    required TResult Function(NoObjectDetected value) noObjectDetected,
  }) {
    return sendingImageFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(SendingImage value)? sendingImage,
    TResult Function(SendingImageFailed value)? sendingImageFailed,
    TResult Function(ObjectDetected value)? objectDetected,
    TResult Function(NoObjectDetected value)? noObjectDetected,
    required TResult orElse(),
  }) {
    if (sendingImageFailed != null) {
      return sendingImageFailed(this);
    }
    return orElse();
  }
}

abstract class SendingImageFailed implements ApiState {
  const factory SendingImageFailed() = _$SendingImageFailed;
}

/// @nodoc
abstract class $ObjectDetectedCopyWith<$Res> {
  factory $ObjectDetectedCopyWith(
          ObjectDetected value, $Res Function(ObjectDetected) then) =
      _$ObjectDetectedCopyWithImpl<$Res>;
  $Res call({List<Artifact> artifacts});
}

/// @nodoc
class _$ObjectDetectedCopyWithImpl<$Res> extends _$ApiStateCopyWithImpl<$Res>
    implements $ObjectDetectedCopyWith<$Res> {
  _$ObjectDetectedCopyWithImpl(
      ObjectDetected _value, $Res Function(ObjectDetected) _then)
      : super(_value, (v) => _then(v as ObjectDetected));

  @override
  ObjectDetected get _value => super._value as ObjectDetected;

  @override
  $Res call({
    Object? artifacts = freezed,
  }) {
    return _then(ObjectDetected(
      artifacts == freezed
          ? _value.artifacts
          : artifacts // ignore: cast_nullable_to_non_nullable
              as List<Artifact>,
    ));
  }
}

/// @nodoc

class _$ObjectDetected implements ObjectDetected {
  const _$ObjectDetected(this.artifacts);

  @override
  final List<Artifact> artifacts;

  @override
  String toString() {
    return 'ApiState.objectDetected(artifacts: $artifacts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ObjectDetected &&
            (identical(other.artifacts, artifacts) ||
                const DeepCollectionEquality()
                    .equals(other.artifacts, artifacts)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(artifacts);

  @JsonKey(ignore: true)
  @override
  $ObjectDetectedCopyWith<ObjectDetected> get copyWith =>
      _$ObjectDetectedCopyWithImpl<ObjectDetected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() sendingImage,
    required TResult Function() sendingImageFailed,
    required TResult Function(List<Artifact> artifacts) objectDetected,
    required TResult Function() noObjectDetected,
  }) {
    return objectDetected(artifacts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? sendingImage,
    TResult Function()? sendingImageFailed,
    TResult Function(List<Artifact> artifacts)? objectDetected,
    TResult Function()? noObjectDetected,
    required TResult orElse(),
  }) {
    if (objectDetected != null) {
      return objectDetected(artifacts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(SendingImage value) sendingImage,
    required TResult Function(SendingImageFailed value) sendingImageFailed,
    required TResult Function(ObjectDetected value) objectDetected,
    required TResult Function(NoObjectDetected value) noObjectDetected,
  }) {
    return objectDetected(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(SendingImage value)? sendingImage,
    TResult Function(SendingImageFailed value)? sendingImageFailed,
    TResult Function(ObjectDetected value)? objectDetected,
    TResult Function(NoObjectDetected value)? noObjectDetected,
    required TResult orElse(),
  }) {
    if (objectDetected != null) {
      return objectDetected(this);
    }
    return orElse();
  }
}

abstract class ObjectDetected implements ApiState {
  const factory ObjectDetected(List<Artifact> artifacts) = _$ObjectDetected;

  List<Artifact> get artifacts => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ObjectDetectedCopyWith<ObjectDetected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoObjectDetectedCopyWith<$Res> {
  factory $NoObjectDetectedCopyWith(
          NoObjectDetected value, $Res Function(NoObjectDetected) then) =
      _$NoObjectDetectedCopyWithImpl<$Res>;
}

/// @nodoc
class _$NoObjectDetectedCopyWithImpl<$Res> extends _$ApiStateCopyWithImpl<$Res>
    implements $NoObjectDetectedCopyWith<$Res> {
  _$NoObjectDetectedCopyWithImpl(
      NoObjectDetected _value, $Res Function(NoObjectDetected) _then)
      : super(_value, (v) => _then(v as NoObjectDetected));

  @override
  NoObjectDetected get _value => super._value as NoObjectDetected;
}

/// @nodoc

class _$NoObjectDetected implements NoObjectDetected {
  const _$NoObjectDetected();

  @override
  String toString() {
    return 'ApiState.noObjectDetected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is NoObjectDetected);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() sendingImage,
    required TResult Function() sendingImageFailed,
    required TResult Function(List<Artifact> artifacts) objectDetected,
    required TResult Function() noObjectDetected,
  }) {
    return noObjectDetected();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? sendingImage,
    TResult Function()? sendingImageFailed,
    TResult Function(List<Artifact> artifacts)? objectDetected,
    TResult Function()? noObjectDetected,
    required TResult orElse(),
  }) {
    if (noObjectDetected != null) {
      return noObjectDetected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(SendingImage value) sendingImage,
    required TResult Function(SendingImageFailed value) sendingImageFailed,
    required TResult Function(ObjectDetected value) objectDetected,
    required TResult Function(NoObjectDetected value) noObjectDetected,
  }) {
    return noObjectDetected(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(SendingImage value)? sendingImage,
    TResult Function(SendingImageFailed value)? sendingImageFailed,
    TResult Function(ObjectDetected value)? objectDetected,
    TResult Function(NoObjectDetected value)? noObjectDetected,
    required TResult orElse(),
  }) {
    if (noObjectDetected != null) {
      return noObjectDetected(this);
    }
    return orElse();
  }
}

abstract class NoObjectDetected implements ApiState {
  const factory NoObjectDetected() = _$NoObjectDetected;
}
