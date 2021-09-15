import 'package:cultural_artifacts_recognition/domain/api_facade.dart';
import 'package:cultural_artifacts_recognition/domain/entities/artifacts.dart';
import 'package:cultural_artifacts_recognition/domain/failures/api_failure.dart';
import 'package:dartz/dartz.dart';
import 'dart:io';
import 'package:dio/dio.dart';
class MlApiFacade implements ApiFacade{
  final dio = Dio();
  final url="19";


  @override
  Future<Either<ApiFailure, Artifact>> postImage(File image) async {
    String fileName = image.path.split('/').last;
    FormData data = FormData.fromMap({
      "file": await MultipartFile.fromFile(
        image.path,
        filename: fileName,
      ),
    });

try {
  var response = await dio.post(url, data: data, options: Options(
      method: 'POST',
      responseType: ResponseType.stream // or ResponseType.JSON
  ));
  print(response);
  return right(Artifact("name", "", ""));
}


catch(error){
  return left(ApiFailure.postFailure());

}
  }
}