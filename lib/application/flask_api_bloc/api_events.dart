

part 'api_bloc.dart';

@freezed
abstract class ApiEvent with _$ApiEvent{

  const factory ApiEvent.sendImage(File image)= $SendImage;

}