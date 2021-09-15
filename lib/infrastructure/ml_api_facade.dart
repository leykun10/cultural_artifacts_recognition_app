import 'package:cultural_artifacts_recognition/domain/api_facade.dart';
import 'package:cultural_artifacts_recognition/domain/entities/artifacts.dart';
import 'package:cultural_artifacts_recognition/domain/failures/api_failure.dart';
import 'package:dartz/dartz.dart';
import 'dart:io';
import 'package:dio/dio.dart';
class MlApiFacade implements ApiFacade{

  final dio = Dio();
  final url="https://92ad7fac37dd43.localhost.run/detectobject";


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

  // var response2 = await dio.post(url, data: data, options: Options(
  //     method: 'POST',
  //     responseType: ResponseType.stream // or ResponseType.JSON
  // ));
  print(response);
  return right(Artifact("name", "", ""));
}


catch(error){
  print(error);

  return left(ApiFailure.postFailure());

}
  }
}