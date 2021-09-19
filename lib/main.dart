import 'dart:io';
import 'package:another_flushbar/flushbar.dart';
import 'package:camera/camera.dart';
import 'package:cultural_artifacts_recognition/application/flask_api_bloc/api_bloc.dart';
import 'package:cultural_artifacts_recognition/domain/entities/artifacts.dart';
import 'package:cultural_artifacts_recognition/infrastructure/remote_api_facade/ml_api_facade.dart';
import 'package:cultural_artifacts_recognition/presentation/detatils_page/detail_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_image/flutter_native_image.dart';
import 'package:flutter_progress_hud/flutter_progress_hud.dart';
import 'package:image_picker/image_picker.dart';
import "package:shared_preferences/shared_preferences.dart";


void main() async{
  WidgetsFlutterBinding.ensureInitialized(); //Ensure plugin services are initialized
  final cameras = await availableCameras(); //Get list of available
  SharedPreferences _prefs = await SharedPreferences.getInstance();
  var mesob = "Messob is a cultural symbol for Ethiopia and Eritrea. Made from locally grown and partially dyed grass and palm leaves known for strength and durability. You welcome the naturally grown, naturally made, and embroidered with a technique that lasted thousands of years. "
      "Each color is guaranteed to last for decades and safe for your home"
      "It is used mainly as a serving tray and as a cultural decorative item to bring in a beautiful and vibrant color to your home or your Ethio-Eritrean cultural themes."
      "Use them for your home and give them as a gift for your loved ones. No statement than letting them own a non-duplicated unique art that brings the cultural touches home.";
  var jebena = "Jebena is most commonly used in the traditional coffee ceremony known as the buna"
      "where women serve coffee to their guests in small clay pots or ceramic pots"
      " alongside an assortment of small snacks such as popcorn, peanuts and the traditional himbasha."
      "it is usually made of clay and has a neck and pouring spout,";


  var kirar ="The kirar is a bowl-lyre chordophone of the Amhara, Oromo, and Tigrinya, Afro-Asiatic-speaking peoples of northern and central Ethiopia and Eritrea. In the past it was associated with male, wandering, semi-professional village minstrels called azmari, but today the krar is also heard played by professional urban musicians, including females, and is taught in educational institutions. It is constructed in a variety of sizes with a range of neck-and-yoke designs that incorporate different types of tuning mechanisms. It can be played solo, in which case its performer is often also a singer, and is also heard in combination with groups of singers and other traditional and modern instruments. When incorporated into contemporary urban popular music ensembles, it can be amplified. The krar is considered a secular instrument and is often contrasted with the other main traditional Ethiopian lyre, the much larger, box-resonated begena (or beganna), which is viewed as a semi-sacred instrument because it is used to accompany verse and poetry praising God. Legend has it that, while the begena was given by God to the Biblical King David, the krar was a distorted imitation of it created by the scheming devil and given to mankind to play as they enjoyed worldly pleasures";

  var kebero="A kebero is a double-headed, conical hand drum used in the traditional music of Eritrea, Sudan and Ethiopia. A piece of animal hide is stretched over each end of the instrument, thus forming a membranophone. A large version of the kebero is also used in Ethiopian and Eritrean Orthodox Christian liturgical music, while smaller versions are used in secular celebrations.";

  var birle ="birle";

  var sefed ="sefed";

  var chira ="chira";


  _prefs.setString("Mesob", mesob).then((bool success) {
  });
  _prefs.setString("Jebena", jebena).then((bool success) {
  });
  _prefs.setString("Kirar", kirar).then((bool success) {
  });
  _prefs.setString("Kebero", kebero).then((bool success) {
  });
  _prefs.setString("birle",birle).then((bool success) {
  });
  _prefs.setString("Sefed", sefed).then((bool success) {
  });
  _prefs.setString("Chira", chira).then((bool success) {
  });


  runApp(MyApp(camera: cameras,));
}

class MyApp extends StatelessWidget {

  final List<CameraDescription>? camera;

  const MyApp({Key? key,this.camera}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,

        onGenerateRoute: (settings) {
          // If you push the PassArguments route
          if (settings.name =="/details") {
            // Cast the arguments to the correct
            // type: ScreenArguments.TextEditingController _textFieldController = TextEditingController();
            final args = settings.arguments as List<Artifact>;

            // Then, extract the required data from
            // the arguments and pass the data to the
            // correct screen.
            return MaterialPageRoute(
              builder: (context) {
                return DetailsPage(
                 artifacts: args,
                );
              },
            );
          }
          // The code only supports
          // PassArgumentsScreen.routeName right now.
          // Other values need to be implemented if we
          // add them. The assertion here will help remind
          // us of that SharedPreferences _prefs = await SharedPreferences.getInstance(); higher up in the call stack, since
          // this assertion would otherwise fire somewhere
          // in the framework.
          assert(false, 'Need to implement ${settings.name}');
          return null;
        },
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
  TextEditingController _textFieldController = TextEditingController();
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

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: IconButton(icon: Icon(Icons.add),onPressed: () async{

                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text('localhost'),
                        content: TextField(
                          controller: _textFieldController,
                          textInputAction: TextInputAction.done,
                          decoration: InputDecoration(hintText: "Enter your route"),
                        ),
                        actions: <Widget>[
                          new FlatButton(
                            child: new Text('Submit'),
                            onPressed: () async{
                              SharedPreferences _prefs = await SharedPreferences.getInstance();
                              _prefs.setString("url", _textFieldController.text).then((bool success) {
                                print("true");
                              });

                            },
                          )
                        ],
                      );
                    });


              },),
            ),

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
                  objectDetected: (state)
                  async {
                    final progress = ProgressHUD.of(context);
                    progress?.dismiss();
                    print(state.artifacts);
                      Navigator.of(context).pushNamed("/details",arguments: state.artifacts);
                  },
                noObjectDetected: (_) async{
                  final progress = ProgressHUD.of(context);
                  progress?.dismiss();
                  await Flushbar(
                      backgroundColor: Colors.redAccent,
                      title: 'No object detected',
                      message:
                      'please try again',
                      duration: Duration(seconds: 3),
                  ).show(context);
                }
                  );

            },
            child:FutureBuilder(
                future: _initializeControllerFeature,
                builder: (context, snapshot){
                  if (snapshot.connectionState == ConnectionState.done) {
                    return Column(
                      children: [
                        Expanded(
                          child: Container(

                              child: Card(
                              color: Colors.black54,
                              elevation: 10.0,
                              child: CameraPreview(_cameraController))),
                        ),

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

                                  File compressedFile = await FlutterNativeImage.compressImage(xFile.path, quality: 100,
                                      targetWidth: 640, targetHeight: 640);
                                  context.read<ApiBlock>().add(ApiEvent.sendImage(File(compressedFile.path)));
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
                                onTap: () async{
                                  XFile? xFile = await ImagePicker().pickImage(source: ImageSource.gallery);
                                  if(xFile!=null) {
                                    print(xFile.path.toString());
                                    File compressedFile = await FlutterNativeImage.compressImage(xFile.path, quality: 100,
                                        targetWidth: 640, targetHeight: 640);
                                    context.read<ApiBlock>().add(ApiEvent.sendImage(File(compressedFile.path)));
                                  }
                                  else{
                                    await Flushbar(
                                      backgroundColor: Colors.redAccent,
                                      title: 'No image selected',
                                      message:
                                      'please try again',
                                      duration: Duration(seconds: 3),
                                    ).show(context);
                                  }

                                },
                                child: Container(
                                  child: Icon(Icons.image_outlined,size: 45,),
                                  height: 60,
                                  width: 60,
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