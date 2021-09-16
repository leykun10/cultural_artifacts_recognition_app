import 'package:cultural_artifacts_recognition/presentation/detatils_page/ParagraphPage.dart';
import 'package:flutter/material.dart';
class DetailsPage extends StatelessWidget {
  const DetailsPage({Key? key}) : super(key: key);

  Widget drawPrediction(List coordinates){
    return Container();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height*0.35,
            child: Image.asset("assets/images/croppedImage.jpg",
                 width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height*0.1,
                    fit: BoxFit.cover,

             ),
          ),
          ParagraphPage()

        ],
      ),
    );
  }
}


