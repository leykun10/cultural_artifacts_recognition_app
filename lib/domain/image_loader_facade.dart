import 'package:cultural_artifacts_recognition/domain/failures/image_failure.dart';
import 'package:dartz/dartz.dart';

abstract class ImageLoaderFacade{

  Future<Either<LoadingError,Unit>> loadImage();
  Future<Either<SavingError,Unit>>  saveImage();

}