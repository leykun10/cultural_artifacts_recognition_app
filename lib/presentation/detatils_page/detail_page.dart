import 'package:cultural_artifacts_recognition/presentation/detatils_page/ParagraphPage.dart';
import 'package:flutter/material.dart';
class DetailsPage extends StatelessWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height*0.35,
            child: Image.network("https://images.unsplash.com/photo-1631166092772-d07aed54b9a0?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8amViZW5hfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
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
