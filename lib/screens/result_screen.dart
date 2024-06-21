import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/models/user_answer_summary_model.dart';
import 'package:quiz_app/widgets/question_answer_summary.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.userAnswersSummary});
  final List<UserAnswerSummay> userAnswersSummary;
  get userDegree{
    return userAnswersSummary.where((element) => element.answer == element.userAnswer).length;
  }
  @override
  Widget build(BuildContext context) {
    log(userAnswersSummary[0].id.toString());
    return Container( 
      padding: const EdgeInsets.symmetric(horizontal: 12),
      height: double.infinity,
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "You Have Answer $userDegree of total ${questions.length}  correctly",
          style: const TextStyle(fontSize: 18 ),),
          const SizedBox(
            height: 48,
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                width: 2,
                color: const Color.fromARGB(255, 0, 48, 48),
              ),
            ),
            height: 350,
            child: SingleChildScrollView(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Exam Summary",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline),
                    ),
                    ...userAnswersSummary.map(
                      (e) => Padding(
                        padding: const EdgeInsets.only(bottom: 12),
                        child: QuestionAnswerSummary(
                          answerSummay: e,
                        ),
                      ),
                    ),
                  ]),
            ),
          ),
        ],
      ),
    );
  }
}
