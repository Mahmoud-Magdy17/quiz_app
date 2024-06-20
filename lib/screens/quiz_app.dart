import 'package:flutter/material.dart';
import 'package:quiz_app/screens/home_screen.dart';
import 'package:quiz_app/screens/question_screen.dart';

class QuizApp extends StatefulWidget {
  const QuizApp({super.key});

  @override
  State<QuizApp> createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  Widget? curScreen;
  @override
  initState() {
    curScreen = HomeScreen(
      goToQuiz: goToQuiz,
    );

    // curScreen = const QuestionScreen();
    super.initState();
  }

  void goToQuiz() {
    setState(() {
      curScreen = const QuestionScreen();
      // print("Hi");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 4, 212, 212),
              Color.fromARGB(255, 91, 248, 248),
            ],
          ),
        ),
        child: curScreen,
      ),
    );
  }
}
