import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen(this.onStartButtonPressed, {super.key});
  final void Function() onStartButtonPressed;

  Widget build(BuildContext buildContext) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 18, 5, 37),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/quiz-neon.jpg",
            ),
            ElevatedButton(
              onPressed: () {
                onStartButtonPressed();
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 202, 96, 133),
                  foregroundColor: Colors.white),
              child: const Text(
                "START",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.w300),
              ),
            )
          ],
        ),
      ),
    );
  }
}
