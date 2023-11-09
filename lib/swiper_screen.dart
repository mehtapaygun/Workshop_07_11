import 'package:flutter/material.dart';
import 'package:workshop_07_11/home_screen.dart';
import 'package:workshop_07_11/quiz_screen.dart';
import 'package:workshop_07_11/result_screen.dart';

class SwiperScreen extends StatefulWidget {
  const SwiperScreen({Key? key}) : super(key: key);

  @override
  _SwiperScreenState createState() => _SwiperScreenState();
}

class _SwiperScreenState extends State<SwiperScreen> {
  String activeScreenName = "home_screen";

  void gotoQuiz() {
    setState(() {
      activeScreenName = "quiz_screen";
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget activeScreen = HomeScreen(gotoQuiz);

    if (activeScreenName == "quiz_screen") {
      activeScreen = QuizScreen(gotoQuiz);
    } else if (activeScreenName == "result_screen") {
      activeScreen = ResultScreen();
    }

    return Container(
      child: activeScreen,
    );
  }
}
