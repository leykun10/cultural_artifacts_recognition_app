

part of 'api_bloc.dart';

@freezed
abstract class ApiState with _$ApiState{


  const factory ApiState.initial() = Initial;
  const factory ApiState.sendingImage()= SendingImage;
  const factory ApiState.sendingImageFailed()= SendingImageFailed;
  // Todo: AuthState for failed response
  const factory ApiState.objectDetected(List<Artifact> artifacts)= ObjectDetected;
  const factory ApiState.noObjectDetected() = NoObjectDetected;


}