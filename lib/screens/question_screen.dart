import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/models/question.dart';
import 'package:quiz_app/widgets/custom_button_answer.dart';

class QuestionScreen extends StatelessWidget {
  const QuestionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Question curQuestion = questions[1];
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Q:/ ${curQuestion.question}",
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Color(0xFF006565),
              fontSize: 16
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          ...curQuestion.getShuffledAnsers().map(
                (e) => CustomButtonAnswer(textAnswer: e, action: () {}),
              )
        ],
      ),
    );
  }
}
