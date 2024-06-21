import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/models/user_answer_summary_model.dart';
import 'package:quiz_app/screens/home_screen.dart';
import 'package:quiz_app/screens/question_screen.dart';
import 'package:quiz_app/screens/result_screen.dart';

class QuizApp extends StatefulWidget {
  const QuizApp({super.key});

  @override
  State<QuizApp> createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  Widget? curScreen;
  List<String> userAnswers = [];
  List<UserAnswerSummay> get userAnswersSummary {
    List<UserAnswerSummay> userAnswersSummary = [];

    for (int i = 0; i < userAnswers.length; i++) {
      userAnswersSummary.add(
        UserAnswerSummay(
          id: i + 1,
          question: questions[i].question,
          answer: questions[i].ansers[0],
          userAnswer: userAnswers[i],
        ),
      );
    }
    return userAnswersSummary;
  }

  @override
  initState() {
    curScreen = HomeScreen(
      goToQuiz: goToQuiz,
    );
    // curScreen = const QuestionScreen();
    super.initState();
  }

  void onSelectedAnser(answer) {
    userAnswers.add(answer);
    if (userAnswers.length == questions.length) {
      setState(() {
        curScreen = ResultScreen(
          userAnswersSummary: userAnswersSummary,
        );
      });
    }
  }

  void goToQuiz() {
    setState(() {
      curScreen = QuestionScreen(
        onSelectedAnswer: onSelectedAnser,
      );
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
