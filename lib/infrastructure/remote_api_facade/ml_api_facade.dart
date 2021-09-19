import 'dart:convert';
import 'dart:ui';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:cultural_artifacts_recognition/domain/facade_interfaces/api_facade.dart';
import 'package:cultural_artifacts_recognition/domain/entities/artifacts.dart';
import 'package:cultural_artifacts_recognition/domain/failures/api_failure.dart';
import 'package:dartz/dartz.dart';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

class MlApiFacade implements ApiFacade{

  final dio = Dio();
  var url="https://cbebb53dc5eabd.localhost.run/detectobject";
  @override
  Future<Either<ApiFailure, List<Artifact>>> postImage(File image) async {
    String fileName = image.path.split('/').last;
    FormData data = FormData.fromMap({
      "file": await MultipartFile.fromFile(
        image.path,
        filename: fileName,
      ),
    });

try {
  SharedPreferences _prefs = await SharedPreferences.getInstance();
  if(_prefs.get("url")!=null){
    url=_prefs.get("url") as String;
    print(url+"/detectobject");
  }
  var response = await dio.post(url+"/detectobject",data: data,  options: Options(
      method: 'POST',
  ));

// print(response.data);
// print(json.decode(response.data).toString());

  if(!response.data.isEmpty){
    SharedPreferences _prefs = await SharedPreferences.getInstance();
   List<Artifact> artifacts =[];
   Map<String,dynamic> data  = response.data;
   data.forEach((key, value) {
     print(data["key"]);
     print(data[key]["label"]);
     artifacts.add(Artifact(artifacts:true,name: data[key]["label"],description: _prefs.get(data[key]["label"]) as String,
         imagePath: image.path,coordinates: [data[key]["x1"] as int,data[key]["x2"] as int,data[key]["y1"] as int,data[key]["y2"] as int]),
     );
   });




   print(artifacts.length);
    return right(artifacts);
  }
  return right([Artifact(artifacts: false)]);
}
catch(error){
  print(error);
  return left(ApiFailure.postFailure());
}
  }
}