import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, required this.goToQuiz});
  final void Function() goToQuiz;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          "assets/images/quiz-logo.png",
          width: 192,
          color: Colors.white,
        ),
        const SizedBox(
          height: 24,
        ),
        const Text(
          "Learn Flutter",
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
          ),
        ),
        const SizedBox(
          height: 48,
        ),
        OutlinedButton.icon(
          onPressed: 
            goToQuiz,
          
          label: const Text("Start Quiz!"),
          icon: const Icon(Icons.arrow_circle_right),
          style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
              textStyle: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              side: const BorderSide(color: Colors.white)),
        )
      ],
    );
  }
}
