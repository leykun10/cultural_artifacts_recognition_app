
import 'package:camera/camera.dart';
import 'package:cultural_artifacts_recognition/presentation/home_page/home_page.dart';
import 'dart:io';
import 'package:flutter/material.dart';


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
    return MaterialApp(theme: ThemeData(), home: CameraScreen(camera: camera,));
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

  @override
  void initState() {
    // TODO: implement initState

    super.initState();
    initializeCamera(selectedCamera);

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
      appBar: AppBar(title: Text("tflite"),),
      body: FutureBuilder(
          future: _initializeControllerFeature,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return Column(
                children: [
                  Expanded(child: CameraPreview(_cameraController)),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                    child: Row(children: [
                      IconButton(
                        onPressed: () {
                          if (widget.camera!.length > 1) {
                            setState(() {
                              selectedCamera =
                              selectedCamera == 0 ? 1 : 0; //Switch camera
                              initializeCamera(selectedCamera);
                            });
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: Text('No secondary camera found'),
                              duration: const Duration(seconds: 2),
                            ));
                          }
                        },
                        icon: Icon(
                            Icons.switch_camera_rounded, color: Colors.white),
                      ),
                      GestureDetector(
                        onTap: () async {
                          await _initializeControllerFeature; //To make sure camera is initialized
                          XFile xFile = await _cameraController.takePicture();
                          setState(() {
                            capturedImage!.add(File(xFile.path));
                          });
                        },
                        child: Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
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
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white),
                            image: capturedImage!.isNotEmpty
                                ? DecorationImage(image: FileImage(capturedImage!.last), fit: BoxFit.cover)
                                : null,
                          ),
                        ),
                      ),


                    ],),)
                ],
              );
            }
            else {
              return CircularProgressIndicator();
            }
          }),
    );
  }

}