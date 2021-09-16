import 'package:cultural_artifacts_recognition/domain/facade_interfaces/api_facade.dart';
import 'package:cultural_artifacts_recognition/domain/entities/artifacts.dart';
import 'package:cultural_artifacts_recognition/domain/failures/api_failure.dart';
import 'package:dartz/dartz.dart';
import 'dart:io';
import 'package:dio/dio.dart';
class MlApiFacade implements ApiFacade{

  final dio = Dio();
  final url="http://4276-197-156-107-181.ngrok.io/detectobject";


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
  // var response = await Dio().get('http://www.google.com');
  // print(response);
  var response = await dio.post(url,data: data,  options: Options(
      method: 'POST',
      // responseType: ResponseType.stream // or ResponseType.JSON
  ));

  return right(Artifact(response.data["1"]["label"], "", ""));
}
catch(error){
  return left(ApiFailure.postFailure());
}
  }
}