

part of 'ml_bloc.dart';

@freezed
abstract class MlStates with _$MlStates{
const factory MlStates.initial()= Initialized;
const factory MlStates.modelLoading()= ModelLoading;
const factory MlStates.modelLoaded()= ModelLoaded;
const factory MlStates.modelLoadingFailed()= ModelLoadingFailed;
const factory MlStates.objectDetecting() = ObjectDetecing;
const factory MlStates.objectDetected(Object object)=ObjectDetected;
const factory MlStates.objectDetectionFailed()=ObjectDetectionFailed;
}