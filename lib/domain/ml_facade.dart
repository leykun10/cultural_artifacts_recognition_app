import 'dart:html';
import 'package:dartz/dartz.dart';
import '../domain/entities/artifacts.dart';
import '../domain/failures/ml_failure.dart';


abstract class MlFacade {
  Future<Either<MlFailure,Unit>> loadModel();
  Future<Either<MlFailure,Artifact>> runModel(File image);
  Future<Either<MlFailure,Unit>> closeModel();
}