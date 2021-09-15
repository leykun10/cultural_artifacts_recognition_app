

part of 'ml_bloc.dart';


@freezed
abstract class MlEvents with _$MlEvents{
  const factory MlEvents.loadModel()=LoadModel;
  const factory MlEvents.detectObject(File image)=DetectObject;
}