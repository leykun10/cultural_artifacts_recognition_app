// import 'dart:io';
// import 'dart:math';
// import 'package:cultural_artifacts_recognition/infrastructure/remote_api_facade/ml_api_facade.dart';
// import 'package:image/image.dart';
// import 'package:dartz/dartz.dart';
// import 'package:tflite/tflite.dart';
// import 'package:tflite_flutter_helper/tflite_flutter_helper.dart';
// import 'package:tflite_flutter/tflite_flutter.dart';
// import 'dart:io';
// import 'dart:developer' as devlog;
// import '../../domain/facade_interfaces/ml_facade.dart';
//
//
// import 'package:cultural_artifacts_recognition/domain/entities/artifacts.dart';
//
// import 'package:cultural_artifacts_recognition/domain/failures/ml_failure.dart';
//
//
// class TfliteML implements MlFacade {
//   @override
//   Future<Either<MlFailure, Unit>> closeModel() async{
//     try {
//       Tflite.close();
//       return right(unit);
//
//     }
//     catch(error) {
//       return left(MlFailure.failedToClose());
//     }
//   }
//
//   // @override
//   // Future<Either<MlFailure, Unit>> loadModel() {
//   //
//   // }
//
//   @override
//   Future<Either<MlFailure, List<Artifact>>> runModel(File image) async{
//     try {
//       // var result = await  MlApiFacade().postImage(image);
//      // var recogntions = await Tflite.detectObjectOnImage(
//      //      path:image.path,
//      //      model: "YOLO",
//      //      imageMean: 0.0,
//      //      imageStd: 255.0,
//      //      threshold: 0.3,       // defaults to 0.1
//      //      numResultsPerClass: 2,// defaults to 5
//      //          // defaults to [0.57273,0.677385,1.87446,2.06253,3.33843,5.47434,7.88282,3.52778,9.77052,9.16828]
//      //      blockSize: 32,      // defaults to 32
//      //      numBoxesPerBlock: 5,  // defaults to 5
//      //      asynch: true
//      //  );
//      // print(recogntions![0]);
//      // devlog.log("message",error: recogntions,name:'MyLog');
//      // print(result);
//      // return right([Artifact("name", "description", "imagePath")]);
//     }
//     catch(error) {
//       print(error);
//       return left(MlFailure.failedToLoad());
//     }
//   }
//
//   @override
//   Future<Either<MlFailure, Unit>> loadModel() async{
//    try {
//      await closeModel();
//      await Tflite.loadModel(
//          model: "assets/tflite/yolo/yolov2_tiny.tflite",
//          labels: "assets/tflite/yolo/tiny_label.txt",
//          numThreads: 1, // defaults to 1
//          isAsset: true, // defaults to true, set to false to load resources outside assets
//          useGpuDelegate: false
//      );
//      return right(unit);
//    }
//    catch(error){
//
//      return left(MlFailure.failedToLoad());
//    }
//   }
//
//
//   /// Shapes of output tensors
//   List<List<int>>? _outputShapes;
//
//   /// Types of output tensors
//   List<TfLiteType>? _outputTypes;
//
//
//   late Interpreter yoloInterpreter;
//    Future<void> initializeInterpreter(File image) async{
//      yoloInterpreter=await Interpreter.fromAsset("lite-model_yolo-v5-tflite_tflite_model_1.tflite");
//      var outputTensors = yoloInterpreter.getOutputTensors();
//      var inputTensors = yoloInterpreter.getInputTensors();
//      print(inputTensors);
//
//      _outputShapes = [];
//      _outputTypes = [];
//      outputTensors.forEach((tensor) {
//        _outputShapes!.add(tensor.shape);
//        _outputTypes!.add(tensor.type);
//      });
//
//      TensorBuffer output1 = TensorBufferFloat(_outputShapes![0]);
//      // TensorBuffer output2 = TensorBufferFloat(_outputShapes![1]);
//      // TensorBuffer output3 = TensorBufferFloat(_outputShapes![2]);
//      // TensorBuffer output4= TensorBufferFloat(_outputShapes![3]);
//      TensorImage inputImage = TensorImage.fromFile(image);
//
//      // Pre-process TensorImage
//      // inputImage = getProcessedImage(inputImage);
//
//
//      List<Object> inputs = [inputImage.buffer];
//      Map<int, Object> outputs = {
//        0: output1.buffer,
//        // 1: output2.buffer,
//        // 2: output3.buffer,
//        // 3: output4.buffer,
//      };
//
//
//      yoloInterpreter.runForMultipleInputs(inputs,outputs);
//      print(outputs);
//   }
//
//   // Future<void> runModelOnInINPUT_SIZEterpreter() async{
//   //
//   // }
//   // ImageProcessor? imageProcessor;
//   // // TensorImage getProcessedImage(TensorImage inputImage) {
//   // //   var padSize = max(inputImage.height, inputImage.width);
//   // //   if (imageProcessor == null) {
//   // //     imageProcessor = ImageProcessorBuilder().add()
//   // //         .add(ResizeWithCropOrPadOp(padSize, padSize))
//   // //         .add(ResizeOp(640, 640, ResizeMethod.BILINEAR))
//   // //         .build();
//   // //   }
//   // //   inputImage = imageProcessor!.process(inputImage);
//   // //   return inputImage;
//   // // }
//
//
// }