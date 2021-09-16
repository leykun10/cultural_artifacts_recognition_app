import 'dart:io';
import 'package:another_flushbar/flushbar.dart';
import 'package:camera/camera.dart';
import 'package:cultural_artifacts_recognition/application/flask_api_bloc/api_bloc.dart';
import 'package:cultural_artifacts_recognition/infrastructure/remote_api_facade/ml_api_facade.dart';
import 'package:cultural_artifacts_recognition/presentation/detatils_page/detail_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_progress_hud/flutter_progress_hud.dart';

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
        theme: ThemeData(), home: MultiBlocProvider(
        providers: [BlocProvider(create: (context)=>ApiBlock(MlApiFacade()))],
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
    // context.read<MlBloc>().add(MlEvents.loadModel());


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


  Widget cameraScreen(BuildContext context){
    return Card(
        color: Colors.grey,
        elevation: 8.0,
        child: CameraPreview(_cameraController));
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(leading: Icon(Icons.menu),
          title: Text('COR'),
          actions: [
            Icon(Icons.favorite),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Icon(Icons.search),
            ),
            Icon(Icons.more_vert),
          ],
          backgroundColor: Colors.cyan,),
        body: ProgressHUD(
          indicatorWidget: Container(
            height: MediaQuery.of(context).size.height*0.08,
            width: MediaQuery.of(context).size.width*0.25,
            child: Center(child: CircularProgressIndicator()),),
          indicatorColor: Colors.black,
          backgroundColor: Colors.white,
          child: BlocListener<ApiBlock,ApiState>(
            listener: (context,state) {

              state.map(initial: (_){

                     },
                  sendingImage:(_)
                  {
                    final progress = ProgressHUD.of(context);
                    progress?.show();

                  } ,
                  sendingImageFailed: (_)
                  async{

                    final progress = ProgressHUD.of(context);
                    progress?.dismiss();
                    await Flushbar(
                      backgroundColor: Colors.redAccent,
                        title: 'Request Failed',
                        message:
                        'please try again',
                        duration: Duration(seconds: 3),
                    ).show(context);

                  },
                  dataReceived: (_)
                  {
                    final progress = ProgressHUD.of(context);
                    progress?.dismiss();
                    Navigator.of(context).pushNamed("/details");
                  });

            },
            child:FutureBuilder(
                future: _initializeControllerFeature,
                builder: (context, snapshot){
                  if (snapshot.connectionState == ConnectionState.done) {

                    return Column(
                      children: [
                        Container(
                            padding: EdgeInsets.symmetric(vertical:  10,horizontal: 0),
                            height: MediaQuery.of(context).size.height*0.68,
                            width: MediaQuery.of(context).size.width*0.9,
                            child: Card(
                            color: Colors.black54,
                            elevation: 10.0,
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
                                  context.read<ApiBlock>().add(ApiEvent.sendImage(File(xFile.path)));

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
                    return Center(child: CircularProgressIndicator());
                  }
                }),
          ),
        ),

    );
  }

}