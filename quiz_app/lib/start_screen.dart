import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/quiz-logo.png',
              height: 300, color: const Color.fromARGB(150, 255, 255, 255)),
          const SizedBox(height: 50),
          const Text(
            "Learn Flutter in the Fun Way",
            style: TextStyle(
                fontSize: 24, color: Colors.white, fontFamily: 'Matemasie'),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),
          OutlinedButton.icon(
            onPressed: () {
              startQuiz();
            },
            icon: const Icon(Icons.arrow_right_alt, color: Colors.white),
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
            label: const Text("Start Quiz"),
          ),
        ],
      ),
    );
  }
}
