import 'dart:ffi';
import 'dart:io';
import 'package:cultural_artifacts_recognition/domain/entities/artifacts.dart';
import 'package:cultural_artifacts_recognition/presentation/detatils_page/ParagraphPage.dart';
import 'package:flutter/material.dart';
class DetailsPage extends StatefulWidget {
  final List<Artifact> artifacts;

  DetailsPage({Key? key,required this.artifacts}) : super(key: key);

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  var imageLoading = true;
  var img;
  final Map<String,int> duplicate = {"Jebena":0,"Kirar":0,"Mesob":0,"Kebero":0,"Sefed":0,"Injera":0,"birle":0};
  List<Artifact> artifacts = [];
  removeDuplicate(){
    List<Artifact> unDuplicateArtifacts = [];
    widget.artifacts.forEach((element) {
      print("all elements");
      if(duplicate[element.name]==0){
        print("called once");
        unDuplicateArtifacts.add(element);
        duplicate[element.name!]=1;
      }
    });
    print("length"+(unDuplicateArtifacts.length).toString());
    setState(() {
      artifacts=unDuplicateArtifacts;
    });

  }

  Widget drawPrediction(List coordinates){
    return Container();
  }



  loadImage(image){
    FileImage(File(image))
        .resolve(ImageConfiguration())
        .addListener((ImageStreamListener((ImageInfo info, bool _) {
      setState(() {
        imageLoading = false;
        img=image;

      });
    })));
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadImage(widget.artifacts[0].imagePath);
    removeDuplicate();
  }
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(  leading: IconButton(
          onPressed: (){
           Navigator.of(context).pop();
          },
          icon:Icon(Icons.arrow_back)),
        actions: [
          Icon(Icons.more_vert),
        ],
        backgroundColor: Colors.black87,),
      body: Column(
        children: [
          imageLoading?Center(child: CircularProgressIndicator(),):Stack(
            children: [
              Container(
                // height: MediaQuery.of(context).size.height*0.35,
                // width: MediaQuery.of(context).size.width,
                child: Image.file(File(img!),
                  // height: MediaQuery.of(context).size.height*0.35,
                  // width: MediaQuery.of(context).size.width,
                  // fit: BoxFit.fill,
                 ),
              ),
             if(imageLoading==false) ... widget.artifacts.map((e) => Positioned(
                 left: e.coordinates![0].toDouble()*(MediaQuery.of(context).size.width/640),
                 top: e.coordinates![2].toDouble()*(MediaQuery.of(context).size.width/640),
                 width: (e.coordinates![1].toDouble()-e.coordinates![0].toDouble())*(MediaQuery.of(context).size.width/640),
                 height:(e.coordinates![3].toDouble()-e.coordinates![2].toDouble())*(MediaQuery.of(context).size.width/640),
                 child:Container(
                   child: Text(e.name!,style: TextStyle(color: Colors.blue),),
                   decoration: BoxDecoration(
                       border: Border.all(color: Colors.yellow,width: 2)
                   ),
                 ) )).toList()
            ],
          ),
          Expanded(child: ListView.builder(
            itemCount: artifacts.length,
            itemBuilder: (context,index) {
                  return ParagraphPage(label:artifacts[index].name,description:artifacts[index].description);
                }
          ))

        ],
      ),
    );
  }
}


