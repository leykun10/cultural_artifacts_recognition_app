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

  ReceivedData dataReceived(Artifact artifact) {
    return ReceivedData(
      artifact,
    );
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
    required TResult Function(Artifact artifact) dataReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? sendingImage,
    TResult Function()? sendingImageFailed,
    TResult Function(Artifact artifact)? dataReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(SendingImage value) sendingImage,
    required TResult Function(SendingImageFailed value) sendingImageFailed,
    required TResult Function(ReceivedData value) dataReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(SendingImage value)? sendingImage,
    TResult Function(SendingImageFailed value)? sendingImageFailed,
    TResult Function(ReceivedData value)? dataReceived,
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
    required TResult Function(Artifact artifact) dataReceived,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? sendingImage,
    TResult Function()? sendingImageFailed,
    TResult Function(Artifact artifact)? dataReceived,
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
    required TResult Function(ReceivedData value) dataReceived,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(SendingImage value)? sendingImage,
    TResult Function(SendingImageFailed value)? sendingImageFailed,
    TResult Function(ReceivedData value)? dataReceived,
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
    required TResult Function(Artifact artifact) dataReceived,
  }) {
    return sendingImage();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? sendingImage,
    TResult Function()? sendingImageFailed,
    TResult Function(Artifact artifact)? dataReceived,
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
    required TResult Function(ReceivedData value) dataReceived,
  }) {
    return sendingImage(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(SendingImage value)? sendingImage,
    TResult Function(SendingImageFailed value)? sendingImageFailed,
    TResult Function(ReceivedData value)? dataReceived,
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
    required TResult Function(Artifact artifact) dataReceived,
  }) {
    return sendingImageFailed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? sendingImage,
    TResult Function()? sendingImageFailed,
    TResult Function(Artifact artifact)? dataReceived,
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
    required TResult Function(ReceivedData value) dataReceived,
  }) {
    return sendingImageFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(SendingImage value)? sendingImage,
    TResult Function(SendingImageFailed value)? sendingImageFailed,
    TResult Function(ReceivedData value)? dataReceived,
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
abstract class $ReceivedDataCopyWith<$Res> {
  factory $ReceivedDataCopyWith(
          ReceivedData value, $Res Function(ReceivedData) then) =
      _$ReceivedDataCopyWithImpl<$Res>;
  $Res call({Artifact artifact});
}

/// @nodoc
class _$ReceivedDataCopyWithImpl<$Res> extends _$ApiStateCopyWithImpl<$Res>
    implements $ReceivedDataCopyWith<$Res> {
  _$ReceivedDataCopyWithImpl(
      ReceivedData _value, $Res Function(ReceivedData) _then)
      : super(_value, (v) => _then(v as ReceivedData));

  @override
  ReceivedData get _value => super._value as ReceivedData;

  @override
  $Res call({
    Object? artifact = freezed,
  }) {
    return _then(ReceivedData(
      artifact == freezed
          ? _value.artifact
          : artifact // ignore: cast_nullable_to_non_nullable
              as Artifact,
    ));
  }
}

/// @nodoc

class _$ReceivedData implements ReceivedData {
  const _$ReceivedData(this.artifact);

  @override
  final Artifact artifact;

  @override
  String toString() {
    return 'ApiState.dataReceived(artifact: $artifact)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ReceivedData &&
            (identical(other.artifact, artifact) ||
                const DeepCollectionEquality()
                    .equals(other.artifact, artifact)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(artifact);

  @JsonKey(ignore: true)
  @override
  $ReceivedDataCopyWith<ReceivedData> get copyWith =>
      _$ReceivedDataCopyWithImpl<ReceivedData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() sendingImage,
    required TResult Function() sendingImageFailed,
    required TResult Function(Artifact artifact) dataReceived,
  }) {
    return dataReceived(artifact);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? sendingImage,
    TResult Function()? sendingImageFailed,
    TResult Function(Artifact artifact)? dataReceived,
    required TResult orElse(),
  }) {
    if (dataReceived != null) {
      return dataReceived(artifact);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(SendingImage value) sendingImage,
    required TResult Function(SendingImageFailed value) sendingImageFailed,
    required TResult Function(ReceivedData value) dataReceived,
  }) {
    return dataReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(SendingImage value)? sendingImage,
    TResult Function(SendingImageFailed value)? sendingImageFailed,
    TResult Function(ReceivedData value)? dataReceived,
    required TResult orElse(),
  }) {
    if (dataReceived != null) {
      return dataReceived(this);
    }
    return orElse();
  }
}

abstract class ReceivedData implements ApiState {
  const factory ReceivedData(Artifact artifact) = _$ReceivedData;

  Artifact get artifact => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReceivedDataCopyWith<ReceivedData> get copyWith =>
      throw _privateConstructorUsedError;
}
