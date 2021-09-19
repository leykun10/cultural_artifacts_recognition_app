import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return IntroductionScreen(
      onDone: (){
        Navigator.of(context).pushNamed("/home");
      },
      pages: [
        PageViewModel(title: "Identify Objects on the Go"),
      ],
    );
  }
}
