import 'dart:html';

import 'package:dartz/dartz.dart';
import 'package:tflite/tflite.dart';

import '../domain/ml_facade.dart';

import 'package:cultural_artifacts_recognition/domain/entities/artifacts.dart';

import 'package:cultural_artifacts_recognition/domain/failures/ml_failure.dart';



class TfliteML implements MlFacade {
  @override
  Future<Either<MlFailure, Unit>> closeModel() async{
    try {
      Tflite.close();
      return right(unit);

    }
    catch(error) {
      return left(MlFailure.failedToClose());
    }
  }

  // @override
  // Future<Either<MlFailure, Unit>> loadModel() {
  //
  // }

  @override
  Future<Either<MlFailure, Artifact>> runModel(File image) async{
    try {
      //Tflite.runModelOnImage(path: image.relativePath);
     return right(Artifact("name", "description", "imagePath"));
    }
    catch(error) {
      return left(MlFailure.failedToLoad());
    }
  }

  @override
  Future<Either<MlFailure, Unit>> loadModel() {
    // TODO: implement loadModel
    throw UnimplementedError();
  }

}