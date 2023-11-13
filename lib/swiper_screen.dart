import 'package:flutter/material.dart';
import 'package:workshop_07_11/home_screen.dart';
import 'package:workshop_07_11/quiz_screen.dart';

class SwiperScreen extends StatefulWidget {
  const SwiperScreen({Key? key}) : super(key: key);

  @override
  _SwiperScreenState createState() => _SwiperScreenState();
}

class _SwiperScreenState extends State<SwiperScreen> {
  String activeScreenName = "home_screen";
  List<String> userAnswers = [];

  void gotoQuiz() {
    setState(() {
      activeScreenName = "quiz_screen";
    });
  }

  void addAnswer(String answer) {
    userAnswers.add(answer);
    print("Listeye yeni cevap eklendi:");
    print(userAnswers);
  }

  @override
  Widget build(BuildContext context) {
    Widget activeScreen = HomeScreen(gotoQuiz);

    if (activeScreenName == "quiz_screen") {
      activeScreen = QuizScreen(
        chooseAnswer: (answer) => addAnswer(answer),
      );
    }

    return Container(
      child: activeScreen,
    );
  }
}
