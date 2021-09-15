// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'ml_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MlEventsTearOff {
  const _$MlEventsTearOff();

  LoadModel loadModel() {
    return const LoadModel();
  }

  DetectObject detectObject(File image) {
    return DetectObject(
      image,
    );
  }
}

/// @nodoc
const $MlEvents = _$MlEventsTearOff();

/// @nodoc
mixin _$MlEvents {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadModel,
    required TResult Function(File image) detectObject,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadModel,
    TResult Function(File image)? detectObject,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadModel value) loadModel,
    required TResult Function(DetectObject value) detectObject,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadModel value)? loadModel,
    TResult Function(DetectObject value)? detectObject,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MlEventsCopyWith<$Res> {
  factory $MlEventsCopyWith(MlEvents value, $Res Function(MlEvents) then) =
      _$MlEventsCopyWithImpl<$Res>;
}

/// @nodoc
class _$MlEventsCopyWithImpl<$Res> implements $MlEventsCopyWith<$Res> {
  _$MlEventsCopyWithImpl(this._value, this._then);

  final MlEvents _value;
  // ignore: unused_field
  final $Res Function(MlEvents) _then;
}

/// @nodoc
abstract class $LoadModelCopyWith<$Res> {
  factory $LoadModelCopyWith(LoadModel value, $Res Function(LoadModel) then) =
      _$LoadModelCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadModelCopyWithImpl<$Res> extends _$MlEventsCopyWithImpl<$Res>
    implements $LoadModelCopyWith<$Res> {
  _$LoadModelCopyWithImpl(LoadModel _value, $Res Function(LoadModel) _then)
      : super(_value, (v) => _then(v as LoadModel));

  @override
  LoadModel get _value => super._value as LoadModel;
}

/// @nodoc

class _$LoadModel implements LoadModel {
  const _$LoadModel();

  @override
  String toString() {
    return 'MlEvents.loadModel()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoadModel);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadModel,
    required TResult Function(File image) detectObject,
  }) {
    return loadModel();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadModel,
    TResult Function(File image)? detectObject,
    required TResult orElse(),
  }) {
    if (loadModel != null) {
      return loadModel();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadModel value) loadModel,
    required TResult Function(DetectObject value) detectObject,
  }) {
    return loadModel(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadModel value)? loadModel,
    TResult Function(DetectObject value)? detectObject,
    required TResult orElse(),
  }) {
    if (loadModel != null) {
      return loadModel(this);
    }
    return orElse();
  }
}

abstract class LoadModel implements MlEvents {
  const factory LoadModel() = _$LoadModel;
}

/// @nodoc
abstract class $DetectObjectCopyWith<$Res> {
  factory $DetectObjectCopyWith(
          DetectObject value, $Res Function(DetectObject) then) =
      _$DetectObjectCopyWithImpl<$Res>;
  $Res call({File image});
}

/// @nodoc
class _$DetectObjectCopyWithImpl<$Res> extends _$MlEventsCopyWithImpl<$Res>
    implements $DetectObjectCopyWith<$Res> {
  _$DetectObjectCopyWithImpl(
      DetectObject _value, $Res Function(DetectObject) _then)
      : super(_value, (v) => _then(v as DetectObject));

  @override
  DetectObject get _value => super._value as DetectObject;

  @override
  $Res call({
    Object? image = freezed,
  }) {
    return _then(DetectObject(
      image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as File,
    ));
  }
}

/// @nodoc

class _$DetectObject implements DetectObject {
  const _$DetectObject(this.image);

  @override
  final File image;

  @override
  String toString() {
    return 'MlEvents.detectObject(image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DetectObject &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(image);

  @JsonKey(ignore: true)
  @override
  $DetectObjectCopyWith<DetectObject> get copyWith =>
      _$DetectObjectCopyWithImpl<DetectObject>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadModel,
    required TResult Function(File image) detectObject,
  }) {
    return detectObject(image);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadModel,
    TResult Function(File image)? detectObject,
    required TResult orElse(),
  }) {
    if (detectObject != null) {
      return detectObject(image);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadModel value) loadModel,
    required TResult Function(DetectObject value) detectObject,
  }) {
    return detectObject(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadModel value)? loadModel,
    TResult Function(DetectObject value)? detectObject,
    required TResult orElse(),
  }) {
    if (detectObject != null) {
      return detectObject(this);
    }
    return orElse();
  }
}

abstract class DetectObject implements MlEvents {
  const factory DetectObject(File image) = _$DetectObject;

  File get image => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DetectObjectCopyWith<DetectObject> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$MlStatesTearOff {
  const _$MlStatesTearOff();

  Initialized initial() {
    return const Initialized();
  }

  ModelLoading modelLoading() {
    return const ModelLoading();
  }

  ModelLoaded modelLoaded() {
    return const ModelLoaded();
  }

  ModelLoadingFailed modelLoadingFailed() {
    return const ModelLoadingFailed();
  }

  ObjectDetecing objectDetecting() {
    return const ObjectDetecing();
  }

  ObjectDetected objectDetected(Object object) {
    return ObjectDetected(
      object,
    );
  }

  ObjectDetectionFailed objectDetectionFailed() {
    return const ObjectDetectionFailed();
  }
}

/// @nodoc
const $MlStates = _$MlStatesTearOff();

/// @nodoc
mixin _$MlStates {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() modelLoading,
    required TResult Function() modelLoaded,
    required TResult Function() modelLoadingFailed,
    required TResult Function() objectDetecting,
    required TResult Function(Object object) objectDetected,
    required TResult Function() objectDetectionFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? modelLoading,
    TResult Function()? modelLoaded,
    TResult Function()? modelLoadingFailed,
    TResult Function()? objectDetecting,
    TResult Function(Object object)? objectDetected,
    TResult Function()? objectDetectionFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialized value) initial,
    required TResult Function(ModelLoading value) modelLoading,
    required TResult Function(ModelLoaded value) modelLoaded,
    required TResult Function(ModelLoadingFailed value) modelLoadingFailed,
    required TResult Function(ObjectDetecing value) objectDetecting,
    required TResult Function(ObjectDetected value) objectDetected,
    required TResult Function(ObjectDetectionFailed value)
        objectDetectionFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initial,
    TResult Function(ModelLoading value)? modelLoading,
    TResult Function(ModelLoaded value)? modelLoaded,
    TResult Function(ModelLoadingFailed value)? modelLoadingFailed,
    TResult Function(ObjectDetecing value)? objectDetecting,
    TResult Function(ObjectDetected value)? objectDetected,
    TResult Function(ObjectDetectionFailed value)? objectDetectionFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MlStatesCopyWith<$Res> {
  factory $MlStatesCopyWith(MlStates value, $Res Function(MlStates) then) =
      _$MlStatesCopyWithImpl<$Res>;
}

/// @nodoc
class _$MlStatesCopyWithImpl<$Res> implements $MlStatesCopyWith<$Res> {
  _$MlStatesCopyWithImpl(this._value, this._then);

  final MlStates _value;
  // ignore: unused_field
  final $Res Function(MlStates) _then;
}

/// @nodoc
abstract class $InitializedCopyWith<$Res> {
  factory $InitializedCopyWith(
          Initialized value, $Res Function(Initialized) then) =
      _$InitializedCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitializedCopyWithImpl<$Res> extends _$MlStatesCopyWithImpl<$Res>
    implements $InitializedCopyWith<$Res> {
  _$InitializedCopyWithImpl(
      Initialized _value, $Res Function(Initialized) _then)
      : super(_value, (v) => _then(v as Initialized));

  @override
  Initialized get _value => super._value as Initialized;
}

/// @nodoc

class _$Initialized implements Initialized {
  const _$Initialized();

  @override
  String toString() {
    return 'MlStates.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Initialized);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() modelLoading,
    required TResult Function() modelLoaded,
    required TResult Function() modelLoadingFailed,
    required TResult Function() objectDetecting,
    required TResult Function(Object object) objectDetected,
    required TResult Function() objectDetectionFailed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? modelLoading,
    TResult Function()? modelLoaded,
    TResult Function()? modelLoadingFailed,
    TResult Function()? objectDetecting,
    TResult Function(Object object)? objectDetected,
    TResult Function()? objectDetectionFailed,
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
    required TResult Function(Initialized value) initial,
    required TResult Function(ModelLoading value) modelLoading,
    required TResult Function(ModelLoaded value) modelLoaded,
    required TResult Function(ModelLoadingFailed value) modelLoadingFailed,
    required TResult Function(ObjectDetecing value) objectDetecting,
    required TResult Function(ObjectDetected value) objectDetected,
    required TResult Function(ObjectDetectionFailed value)
        objectDetectionFailed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initial,
    TResult Function(ModelLoading value)? modelLoading,
    TResult Function(ModelLoaded value)? modelLoaded,
    TResult Function(ModelLoadingFailed value)? modelLoadingFailed,
    TResult Function(ObjectDetecing value)? objectDetecting,
    TResult Function(ObjectDetected value)? objectDetected,
    TResult Function(ObjectDetectionFailed value)? objectDetectionFailed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initialized implements MlStates {
  const factory Initialized() = _$Initialized;
}

/// @nodoc
abstract class $ModelLoadingCopyWith<$Res> {
  factory $ModelLoadingCopyWith(
          ModelLoading value, $Res Function(ModelLoading) then) =
      _$ModelLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$ModelLoadingCopyWithImpl<$Res> extends _$MlStatesCopyWithImpl<$Res>
    implements $ModelLoadingCopyWith<$Res> {
  _$ModelLoadingCopyWithImpl(
      ModelLoading _value, $Res Function(ModelLoading) _then)
      : super(_value, (v) => _then(v as ModelLoading));

  @override
  ModelLoading get _value => super._value as ModelLoading;
}

/// @nodoc

class _$ModelLoading implements ModelLoading {
  const _$ModelLoading();

  @override
  String toString() {
    return 'MlStates.modelLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ModelLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() modelLoading,
    required TResult Function() modelLoaded,
    required TResult Function() modelLoadingFailed,
    required TResult Function() objectDetecting,
    required TResult Function(Object object) objectDetected,
    required TResult Function() objectDetectionFailed,
  }) {
    return modelLoading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? modelLoading,
    TResult Function()? modelLoaded,
    TResult Function()? modelLoadingFailed,
    TResult Function()? objectDetecting,
    TResult Function(Object object)? objectDetected,
    TResult Function()? objectDetectionFailed,
    required TResult orElse(),
  }) {
    if (modelLoading != null) {
      return modelLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialized value) initial,
    required TResult Function(ModelLoading value) modelLoading,
    required TResult Function(ModelLoaded value) modelLoaded,
    required TResult Function(ModelLoadingFailed value) modelLoadingFailed,
    required TResult Function(ObjectDetecing value) objectDetecting,
    required TResult Function(ObjectDetected value) objectDetected,
    required TResult Function(ObjectDetectionFailed value)
        objectDetectionFailed,
  }) {
    return modelLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initial,
    TResult Function(ModelLoading value)? modelLoading,
    TResult Function(ModelLoaded value)? modelLoaded,
    TResult Function(ModelLoadingFailed value)? modelLoadingFailed,
    TResult Function(ObjectDetecing value)? objectDetecting,
    TResult Function(ObjectDetected value)? objectDetected,
    TResult Function(ObjectDetectionFailed value)? objectDetectionFailed,
    required TResult orElse(),
  }) {
    if (modelLoading != null) {
      return modelLoading(this);
    }
    return orElse();
  }
}

abstract class ModelLoading implements MlStates {
  const factory ModelLoading() = _$ModelLoading;
}

/// @nodoc
abstract class $ModelLoadedCopyWith<$Res> {
  factory $ModelLoadedCopyWith(
          ModelLoaded value, $Res Function(ModelLoaded) then) =
      _$ModelLoadedCopyWithImpl<$Res>;
}

/// @nodoc
class _$ModelLoadedCopyWithImpl<$Res> extends _$MlStatesCopyWithImpl<$Res>
    implements $ModelLoadedCopyWith<$Res> {
  _$ModelLoadedCopyWithImpl(
      ModelLoaded _value, $Res Function(ModelLoaded) _then)
      : super(_value, (v) => _then(v as ModelLoaded));

  @override
  ModelLoaded get _value => super._value as ModelLoaded;
}

/// @nodoc

class _$ModelLoaded implements ModelLoaded {
  const _$ModelLoaded();

  @override
  String toString() {
    return 'MlStates.modelLoaded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ModelLoaded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() modelLoading,
    required TResult Function() modelLoaded,
    required TResult Function() modelLoadingFailed,
    required TResult Function() objectDetecting,
    required TResult Function(Object object) objectDetected,
    required TResult Function() objectDetectionFailed,
  }) {
    return modelLoaded();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? modelLoading,
    TResult Function()? modelLoaded,
    TResult Function()? modelLoadingFailed,
    TResult Function()? objectDetecting,
    TResult Function(Object object)? objectDetected,
    TResult Function()? objectDetectionFailed,
    required TResult orElse(),
  }) {
    if (modelLoaded != null) {
      return modelLoaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialized value) initial,
    required TResult Function(ModelLoading value) modelLoading,
    required TResult Function(ModelLoaded value) modelLoaded,
    required TResult Function(ModelLoadingFailed value) modelLoadingFailed,
    required TResult Function(ObjectDetecing value) objectDetecting,
    required TResult Function(ObjectDetected value) objectDetected,
    required TResult Function(ObjectDetectionFailed value)
        objectDetectionFailed,
  }) {
    return modelLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initial,
    TResult Function(ModelLoading value)? modelLoading,
    TResult Function(ModelLoaded value)? modelLoaded,
    TResult Function(ModelLoadingFailed value)? modelLoadingFailed,
    TResult Function(ObjectDetecing value)? objectDetecting,
    TResult Function(ObjectDetected value)? objectDetected,
    TResult Function(ObjectDetectionFailed value)? objectDetectionFailed,
    required TResult orElse(),
  }) {
    if (modelLoaded != null) {
      return modelLoaded(this);
    }
    return orElse();
  }
}

abstract class ModelLoaded implements MlStates {
  const factory ModelLoaded() = _$ModelLoaded;
}

/// @nodoc
abstract class $ModelLoadingFailedCopyWith<$Res> {
  factory $ModelLoadingFailedCopyWith(
          ModelLoadingFailed value, $Res Function(ModelLoadingFailed) then) =
      _$ModelLoadingFailedCopyWithImpl<$Res>;
}

/// @nodoc
class _$ModelLoadingFailedCopyWithImpl<$Res>
    extends _$MlStatesCopyWithImpl<$Res>
    implements $ModelLoadingFailedCopyWith<$Res> {
  _$ModelLoadingFailedCopyWithImpl(
      ModelLoadingFailed _value, $Res Function(ModelLoadingFailed) _then)
      : super(_value, (v) => _then(v as ModelLoadingFailed));

  @override
  ModelLoadingFailed get _value => super._value as ModelLoadingFailed;
}

/// @nodoc

class _$ModelLoadingFailed implements ModelLoadingFailed {
  const _$ModelLoadingFailed();

  @override
  String toString() {
    return 'MlStates.modelLoadingFailed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ModelLoadingFailed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() modelLoading,
    required TResult Function() modelLoaded,
    required TResult Function() modelLoadingFailed,
    required TResult Function() objectDetecting,
    required TResult Function(Object object) objectDetected,
    required TResult Function() objectDetectionFailed,
  }) {
    return modelLoadingFailed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? modelLoading,
    TResult Function()? modelLoaded,
    TResult Function()? modelLoadingFailed,
    TResult Function()? objectDetecting,
    TResult Function(Object object)? objectDetected,
    TResult Function()? objectDetectionFailed,
    required TResult orElse(),
  }) {
    if (modelLoadingFailed != null) {
      return modelLoadingFailed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialized value) initial,
    required TResult Function(ModelLoading value) modelLoading,
    required TResult Function(ModelLoaded value) modelLoaded,
    required TResult Function(ModelLoadingFailed value) modelLoadingFailed,
    required TResult Function(ObjectDetecing value) objectDetecting,
    required TResult Function(ObjectDetected value) objectDetected,
    required TResult Function(ObjectDetectionFailed value)
        objectDetectionFailed,
  }) {
    return modelLoadingFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initial,
    TResult Function(ModelLoading value)? modelLoading,
    TResult Function(ModelLoaded value)? modelLoaded,
    TResult Function(ModelLoadingFailed value)? modelLoadingFailed,
    TResult Function(ObjectDetecing value)? objectDetecting,
    TResult Function(ObjectDetected value)? objectDetected,
    TResult Function(ObjectDetectionFailed value)? objectDetectionFailed,
    required TResult orElse(),
  }) {
    if (modelLoadingFailed != null) {
      return modelLoadingFailed(this);
    }
    return orElse();
  }
}

abstract class ModelLoadingFailed implements MlStates {
  const factory ModelLoadingFailed() = _$ModelLoadingFailed;
}

/// @nodoc
abstract class $ObjectDetecingCopyWith<$Res> {
  factory $ObjectDetecingCopyWith(
          ObjectDetecing value, $Res Function(ObjectDetecing) then) =
      _$ObjectDetecingCopyWithImpl<$Res>;
}

/// @nodoc
class _$ObjectDetecingCopyWithImpl<$Res> extends _$MlStatesCopyWithImpl<$Res>
    implements $ObjectDetecingCopyWith<$Res> {
  _$ObjectDetecingCopyWithImpl(
      ObjectDetecing _value, $Res Function(ObjectDetecing) _then)
      : super(_value, (v) => _then(v as ObjectDetecing));

  @override
  ObjectDetecing get _value => super._value as ObjectDetecing;
}

/// @nodoc

class _$ObjectDetecing implements ObjectDetecing {
  const _$ObjectDetecing();

  @override
  String toString() {
    return 'MlStates.objectDetecting()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ObjectDetecing);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() modelLoading,
    required TResult Function() modelLoaded,
    required TResult Function() modelLoadingFailed,
    required TResult Function() objectDetecting,
    required TResult Function(Object object) objectDetected,
    required TResult Function() objectDetectionFailed,
  }) {
    return objectDetecting();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? modelLoading,
    TResult Function()? modelLoaded,
    TResult Function()? modelLoadingFailed,
    TResult Function()? objectDetecting,
    TResult Function(Object object)? objectDetected,
    TResult Function()? objectDetectionFailed,
    required TResult orElse(),
  }) {
    if (objectDetecting != null) {
      return objectDetecting();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialized value) initial,
    required TResult Function(ModelLoading value) modelLoading,
    required TResult Function(ModelLoaded value) modelLoaded,
    required TResult Function(ModelLoadingFailed value) modelLoadingFailed,
    required TResult Function(ObjectDetecing value) objectDetecting,
    required TResult Function(ObjectDetected value) objectDetected,
    required TResult Function(ObjectDetectionFailed value)
        objectDetectionFailed,
  }) {
    return objectDetecting(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initial,
    TResult Function(ModelLoading value)? modelLoading,
    TResult Function(ModelLoaded value)? modelLoaded,
    TResult Function(ModelLoadingFailed value)? modelLoadingFailed,
    TResult Function(ObjectDetecing value)? objectDetecting,
    TResult Function(ObjectDetected value)? objectDetected,
    TResult Function(ObjectDetectionFailed value)? objectDetectionFailed,
    required TResult orElse(),
  }) {
    if (objectDetecting != null) {
      return objectDetecting(this);
    }
    return orElse();
  }
}

abstract class ObjectDetecing implements MlStates {
  const factory ObjectDetecing() = _$ObjectDetecing;
}

/// @nodoc
abstract class $ObjectDetectedCopyWith<$Res> {
  factory $ObjectDetectedCopyWith(
          ObjectDetected value, $Res Function(ObjectDetected) then) =
      _$ObjectDetectedCopyWithImpl<$Res>;
  $Res call({Object object});
}

/// @nodoc
class _$ObjectDetectedCopyWithImpl<$Res> extends _$MlStatesCopyWithImpl<$Res>
    implements $ObjectDetectedCopyWith<$Res> {
  _$ObjectDetectedCopyWithImpl(
      ObjectDetected _value, $Res Function(ObjectDetected) _then)
      : super(_value, (v) => _then(v as ObjectDetected));

  @override
  ObjectDetected get _value => super._value as ObjectDetected;

  @override
  $Res call({
    Object? object = freezed,
  }) {
    return _then(ObjectDetected(
      object == freezed
          ? _value.object
          : object // ignore: cast_nullable_to_non_nullable
              as Object,
    ));
  }
}

/// @nodoc

class _$ObjectDetected implements ObjectDetected {
  const _$ObjectDetected(this.object);

  @override
  final Object object;

  @override
  String toString() {
    return 'MlStates.objectDetected(object: $object)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ObjectDetected &&
            (identical(other.object, object) ||
                const DeepCollectionEquality().equals(other.object, object)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(object);

  @JsonKey(ignore: true)
  @override
  $ObjectDetectedCopyWith<ObjectDetected> get copyWith =>
      _$ObjectDetectedCopyWithImpl<ObjectDetected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() modelLoading,
    required TResult Function() modelLoaded,
    required TResult Function() modelLoadingFailed,
    required TResult Function() objectDetecting,
    required TResult Function(Object object) objectDetected,
    required TResult Function() objectDetectionFailed,
  }) {
    return objectDetected(object);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? modelLoading,
    TResult Function()? modelLoaded,
    TResult Function()? modelLoadingFailed,
    TResult Function()? objectDetecting,
    TResult Function(Object object)? objectDetected,
    TResult Function()? objectDetectionFailed,
    required TResult orElse(),
  }) {
    if (objectDetected != null) {
      return objectDetected(object);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialized value) initial,
    required TResult Function(ModelLoading value) modelLoading,
    required TResult Function(ModelLoaded value) modelLoaded,
    required TResult Function(ModelLoadingFailed value) modelLoadingFailed,
    required TResult Function(ObjectDetecing value) objectDetecting,
    required TResult Function(ObjectDetected value) objectDetected,
    required TResult Function(ObjectDetectionFailed value)
        objectDetectionFailed,
  }) {
    return objectDetected(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initial,
    TResult Function(ModelLoading value)? modelLoading,
    TResult Function(ModelLoaded value)? modelLoaded,
    TResult Function(ModelLoadingFailed value)? modelLoadingFailed,
    TResult Function(ObjectDetecing value)? objectDetecting,
    TResult Function(ObjectDetected value)? objectDetected,
    TResult Function(ObjectDetectionFailed value)? objectDetectionFailed,
    required TResult orElse(),
  }) {
    if (objectDetected != null) {
      return objectDetected(this);
    }
    return orElse();
  }
}

abstract class ObjectDetected implements MlStates {
  const factory ObjectDetected(Object object) = _$ObjectDetected;

  Object get object => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ObjectDetectedCopyWith<ObjectDetected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ObjectDetectionFailedCopyWith<$Res> {
  factory $ObjectDetectionFailedCopyWith(ObjectDetectionFailed value,
          $Res Function(ObjectDetectionFailed) then) =
      _$ObjectDetectionFailedCopyWithImpl<$Res>;
}

/// @nodoc
class _$ObjectDetectionFailedCopyWithImpl<$Res>
    extends _$MlStatesCopyWithImpl<$Res>
    implements $ObjectDetectionFailedCopyWith<$Res> {
  _$ObjectDetectionFailedCopyWithImpl(
      ObjectDetectionFailed _value, $Res Function(ObjectDetectionFailed) _then)
      : super(_value, (v) => _then(v as ObjectDetectionFailed));

  @override
  ObjectDetectionFailed get _value => super._value as ObjectDetectionFailed;
}

/// @nodoc

class _$ObjectDetectionFailed implements ObjectDetectionFailed {
  const _$ObjectDetectionFailed();

  @override
  String toString() {
    return 'MlStates.objectDetectionFailed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ObjectDetectionFailed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() modelLoading,
    required TResult Function() modelLoaded,
    required TResult Function() modelLoadingFailed,
    required TResult Function() objectDetecting,
    required TResult Function(Object object) objectDetected,
    required TResult Function() objectDetectionFailed,
  }) {
    return objectDetectionFailed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? modelLoading,
    TResult Function()? modelLoaded,
    TResult Function()? modelLoadingFailed,
    TResult Function()? objectDetecting,
    TResult Function(Object object)? objectDetected,
    TResult Function()? objectDetectionFailed,
    required TResult orElse(),
  }) {
    if (objectDetectionFailed != null) {
      return objectDetectionFailed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialized value) initial,
    required TResult Function(ModelLoading value) modelLoading,
    required TResult Function(ModelLoaded value) modelLoaded,
    required TResult Function(ModelLoadingFailed value) modelLoadingFailed,
    required TResult Function(ObjectDetecing value) objectDetecting,
    required TResult Function(ObjectDetected value) objectDetected,
    required TResult Function(ObjectDetectionFailed value)
        objectDetectionFailed,
  }) {
    return objectDetectionFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initial,
    TResult Function(ModelLoading value)? modelLoading,
    TResult Function(ModelLoaded value)? modelLoaded,
    TResult Function(ModelLoadingFailed value)? modelLoadingFailed,
    TResult Function(ObjectDetecing value)? objectDetecting,
    TResult Function(ObjectDetected value)? objectDetected,
    TResult Function(ObjectDetectionFailed value)? objectDetectionFailed,
    required TResult orElse(),
  }) {
    if (objectDetectionFailed != null) {
      return objectDetectionFailed(this);
    }
    return orElse();
  }
}

abstract class ObjectDetectionFailed implements MlStates {
  const factory ObjectDetectionFailed() = _$ObjectDetectionFailed;
}
