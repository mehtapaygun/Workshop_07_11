import 'package:flutter/material.dart';
import 'package:workshop_07_11/data/questions.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen(this.onStartButtonPressed, {super.key});
  final void Function() onStartButtonPressed;

  @override
  State<QuizScreen> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<QuizScreen> {
  var questionindex = 0;
  void changeQuiz() {
    setState(() {
      if (questionindex < questions.length - 1) {
        questionindex++;
      } else {}
    });
  }

  @override
  Widget build(BuildContext buildContext) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 18, 5, 37),
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                questions[questionindex].question,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.w800,
                    letterSpacing: 1.5),
              ),
              const SizedBox(height: 50),
              ...questions[questionindex].answers.map(
                (answer) {
                  return ElevatedButton(
                    onPressed: () {
                      changeQuiz();
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.indigo[100],
                        foregroundColor: Colors.indigo[900],
                        minimumSize: Size(380, 40)),
                    child: Text(
                      answer,
                      style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w900,
                          letterSpacing: 1.5),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
