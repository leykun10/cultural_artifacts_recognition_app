

part 'api_bloc.dart';

@freezed
abstract class ApiState with _$ApiState{
  const factory ApiState.initial() = Initial;
  const factory ApiState.sendingImage(File image)= SendingImage;
  const factory ApiState.sendingImageFailed()= SendingImageFailed;
  const factory ApiState.dataReceived()= ReceivedData;

}