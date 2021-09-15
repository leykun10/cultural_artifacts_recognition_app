import 'dart:io';
import 'package:cultural_artifacts_recognition/infrastructure/ml_api_facade.dart';
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


  }

}