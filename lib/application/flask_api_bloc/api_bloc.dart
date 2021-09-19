import 'dart:io';
import 'package:cultural_artifacts_recognition/domain/entities/artifacts.dart';
import 'package:cultural_artifacts_recognition/infrastructure/remote_api_facade/ml_api_facade.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'api_events.dart';
part 'api_states.dart';
part  'api_bloc.freezed.dart';



class ApiBlock extends Bloc<ApiEvent,ApiState>{
  final MlApiFacade _mlApiFacade;
  ApiBlock(this._mlApiFacade) : super(ApiState.initial());

  @override
  Stream<ApiState> mapEventToState(ApiEvent event) async*{

     yield* event.map(sendImage: (event) async*{
       yield ApiState.sendingImage();
       var result = await _mlApiFacade.postImage(event.image);
       yield result.fold((l) => ApiState.sendingImageFailed(),
               (r) {
         if(!r[0].artifacts!){
           return ApiState.noObjectDetected();
         }
          return ApiState.objectDetected(r);});
       
     });
  }

}