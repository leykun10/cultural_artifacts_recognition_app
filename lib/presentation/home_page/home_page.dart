

import 'package:flutter/services.dart';
import "package:tflite/tflite.dart";
import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PickedFile? _image;
  bool? _busy;
  Map<String,dynamic>? _recognition;
  var descriptions={
    "0 Jebena":"Coffee thing",
    "1 Enjera":" Food to Eat",
    "3 Kirar":"Musical Instruments",
    "4 Tej":"Heavy alcholic drink",
    "2 Mesob":"A tool to prepare or store food",
  };

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _busy=true;
    loadModel().then((value){
    setState(() {
      _busy=false;
    });

  });
  }

   Future<void> loadModel() async{
    Tflite.close();
    try{

      String? res =await Tflite.loadModel(model: "assets/tflite/model_unquant.tflite",
          labels: "assets/tflite/labels.txt");
      
    }
    on PlatformException{
      print("Failed to load model.");
    }
  }
    Future<void> predictImage(String imagePath) async{
    int startTime = new DateTime.now().millisecondsSinceEpoch;
    var recognitions= await Tflite.runModelOnImage(path: imagePath);
    var recognition=recognitions![0];
    var confidence = recognitions[0]["confidence"];
    print(recognitions);
    for(int i=0;i<recognitions.length;i++){

      if(recognitions[i]["confidence"]>confidence){
        recognition=recognitions[i];
      }

    }
    setState(() {
      _recognition=Map<String, dynamic>.from(recognition);
      _busy=false;

    });

    int endTime = new DateTime.now().millisecondsSinceEpoch;
    print("Inference took${endTime-startTime}");

    }
  
  
  void selectFromImagePicker() async{
    var image = await ImagePicker().pickImage(source: ImageSource.gallery);
    if(image==null) return;
    setState(() {
      _busy=true;
    });

    predictImage(image.path);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("tflite"),


    ),body:(_recognition!=null)?OutPut(label:_recognition!["label"],descriptions: descriptions[_recognition!["label"]],):Container(child:
      _busy!?CircularProgressIndicator():Center(
      ),)


      ,floatingActionButton: FloatingActionButton(
      onPressed: (){
        selectFromImagePicker();
      },
      child: Icon(Icons.image),
    ),);
  }
}
// class HomeWidget extends StatelessWidget {
//   const HomeWidget({Key? key,this.busy}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child:Center(child:
//         TextButton(onPressed: , child: child),)
//     );
//   }
// }


class OutPut extends StatelessWidget {
  final label;
  final descriptions;
  const OutPut({Key? key,this.label, this.descriptions}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical:20,horizontal:30),
      child: Card(child:
        Container(
          child: Column(children: [
            Text(label,style: TextStyle(),),
            Container(
              margin: EdgeInsets.symmetric(vertical:20,horizontal:30),
              child:
              Text(descriptions),
            )
          ],),
        ),),
    );
  }
}


