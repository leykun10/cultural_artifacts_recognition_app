import 'package:cultural_artifacts_recognition/domain/entities/artifacts.dart';
import 'package:dartz/dartz.dart';
import 'dart:io';
import '../failures/api_failure.dart';

abstract class ApiFacade {

  Future<Either<ApiFailure,List<Artifact>>> postImage(File image);


}