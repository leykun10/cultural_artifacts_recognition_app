import 'dart:io';
import 'package:cultural_artifacts_recognition/domain/ml_facade.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'ml_events.dart';
part 'ml_states.dart';
part  'ml_bloc.freezed.dart';

class MlBloc extends Bloc<MlEvents,MlStates>{
  final MlFacade _mlFacade;

     MlBloc(this._mlFacade):super(MlStates.initial());
  @override
  Stream<MlStates> mapEventToState(MlEvents event) async*{
    yield* event.map(loadModel: (event) async*{
      yield MlStates.modelLoading();
      final result = await _mlFacade.loadModel();
      yield result.fold((l) => MlStates.modelLoadingFailed(), (r) => MlStates.modelLoaded());
    },
              detectObject: (event) async*{
              yield MlStates.objectDetecting();
              final result =await _mlFacade.runModel(event.image);
              yield result.fold((l) => MlStates.objectDetectionFailed(), (r) =>MlStates.objectDetected(r) );
              });
  }

}