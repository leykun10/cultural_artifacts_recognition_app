import 'package:cultural_artifacts_recognition/domain/failures/image_failure.dart';

import 'package:dartz/dartz.dart';

import '../domain/image_loader_facade.dart';

class CameraImageLoaderFacade implements ImageLoaderFacade{
  @override
  Future<Either<LoadingError, Unit>> loadImage() {
    // TODO: implement loadImage
    throw UnimplementedError();
  }

  @override
  Future<Either<SavingError, Unit>> saveImage() {
    // TODO: implement saveImage
    throw UnimplementedError();
  }

}