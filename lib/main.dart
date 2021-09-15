import 'dart:io';
import 'package:camera/camera.dart';
import 'package:cultural_artifacts_recognition/application/ml_bloc/ml_bloc.dart';
import 'package:cultural_artifacts_recognition/domain/ml_facade.dart';
import 'package:cultural_artifacts_recognition/infrastructure/ml_api_facade.dart';
import 'package:cultural_artifacts_recognition/infrastructure/tflite_ml_facade.dart';
import 'package:cultural_artifacts_recognition/presentation/detatils_page/detail_page.dart';
import 'package:cultural_artifacts_recognition/presentation/home_page/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_image/flutter_native_image.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized(); //Ensure plugin services are initialized
  final cameras = await availableCameras(); //Get list of available
  print(cameras);
  runApp(MyApp(camera: cameras,));
}

class MyApp extends StatelessWidget {

  final List<CameraDescription>? camera;

  const MyApp({Key? key,this.camera}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        routes:   {
          '/details': (context) => const DetailsPage()},
        theme: ThemeData(), home: BlocProvider(
        create: (context)=>MlBloc(TfliteML()),
        child: CameraScreen(camera: camera),

      ));
  }
}

class CameraScreen extends StatefulWidget {
  final List<CameraDescription>? camera;
  const CameraScreen({Key? key, this.camera}) : super(key: key);

  @override
  _CameraScreenState createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
  late CameraController _cameraController;
  late Future<void> _initializeControllerFeature;
  int selectedCamera = 0;
  List<File>? capturedImage=[];
  bool isDetecting=false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initializeCamera(selectedCamera);
    context.read<MlBloc>().add(MlEvents.loadModel());


  }

  @override
  void dispose() {
    // TODO: implement dispose
    _cameraController.dispose();
    super.dispose();
  }


  initializeCamera(int cameraIndex) async{
    _cameraController = CameraController(widget.camera![cameraIndex], ResolutionPreset.medium);
    _initializeControllerFeature = _cameraController.initialize();
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(title: Text("COR"),backgroundColor: Colors.cyan,),
        body: BlocConsumer<MlBloc,MlStates>(
          listener: (context,state){
          state.map(initial: (state){
          },
              modelLoading: (state){
              print("model loading");
              },
              modelLoaded: (state){
              print("model loaded");
              },
              modelLoadingFailed: (state){
              print("model loading failed");
              } ,
              objectDetecting: (state){
              print("object detecting");
              isDetecting=true;
              },
              objectDetected: (state){
                isDetecting=false;
                final snackBar = SnackBar(content: Text("object detected"));
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              print("object detected \n");
              print(state);
              },
              objectDetectionFailed: (state){
               Navigator.of(context).pushNamed("/details");
               isDetecting =false;
                final snackBar = SnackBar(content: Text("object detection failed"));
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              print("object detection Failed");
              });
          },
          builder:(cxt,state)=>FutureBuilder(
              future: _initializeControllerFeature,
              builder: (context, snapshot){
                if (snapshot.connectionState == ConnectionState.done) {
                  state.map(initial: (_){}, modelLoading: (_){},
                      modelLoaded: (_){},
                      modelLoadingFailed:(_){
                      },
                      objectDetecting: (_){
                      },
                      objectDetected: (_){
                      },
                      objectDetectionFailed: (_){
                      });
                  return isDetecting?Center(child: CircularProgressIndicator(color: Colors.blue,)):Column(
                    children: [
                      Expanded(child: Card(
                          color: Colors.grey,
                          elevation: 8.0,
                          child: CameraPreview(_cameraController))),
                      Card(
                        color: Colors.cyan,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                        elevation: 8.0,
                        child: Container(
                          height: MediaQuery.of(context).size.height*0.18,


                          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                          child: Row(
                            mainAxisAlignment:MainAxisAlignment.spaceAround,
                            children: [
                            IconButton(
                              onPressed: () {
                                if (widget.camera!.length > 1) {
                                  setState(() {
                                    selectedCamera =
                                    selectedCamera == 0 ? 1 : 0; //Switch camera
                                    initializeCamera(selectedCamera);
                                  });
                                } else { isDetecting=true;
                                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                    content: Text('No secondary camera found'),
                                    duration: const Duration(seconds: 2),
                                  ));
                                }
                              },
                              icon: Icon(
                                  Icons.switch_camera_rounded, color: Colors.white,size: 55,),
                            ),
                            GestureDetector(
                              onTap: () async {

                                await _initializeControllerFeature; //To make sure camera is initialized
                                XFile xFile = await _cameraController.takePicture();

                                ImageProperties properties = await FlutterNativeImage.getImageProperties(xFile.path);
                                File compressedFile = await FlutterNativeImage.compressImage(xFile.path, quality: 80,
                                    targetWidth: 640, targetHeight: 320);
                                cxt.read<MlBloc>().add(MlEvents.detectObject(File(xFile.path)));
                                try{
                                  await  MlApiFacade().postImage(File(xFile.path));
                                }
                                catch(e){
                                  print(e);
                                }



                                // TfliteML().initializeInterpreter(compressedFile);
                                // setState(() {
                                //   capturedImage!.add(File(xFile.path));
                                // });
                              },
                              child: Container(
                                child: Icon(Icons.camera,size: 45,),

                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,

                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                if (capturedImage!.isEmpty) return; //Return if no image
                                // Navigator.push(context,
                                //     MaterialPageRoute(
                                //         builder: (context) => GalleryScreen(
                                //             images: capturedImages.reversed.toList())));
                              },
                              child: Container(
                                child: Icon(Icons.image_outlined,size: 45,),
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white),
                                  borderRadius: BorderRadius.all(Radius.circular(10)),
                                  image: capturedImage!.isNotEmpty
                                      ? DecorationImage(image: FileImage(capturedImage!.last), fit: BoxFit.cover)
                                      : null,
                                ),
                              ),
                            ),
                          ],),),
                      )
                    ],
                  );
                }
                else {
                  return CircularProgressIndicator();
                }
              }),
        ),

    );
  }

}