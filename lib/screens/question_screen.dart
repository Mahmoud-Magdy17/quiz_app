import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/models/question.dart';
import 'package:quiz_app/widgets/custom_button_answer.dart';

class QuestionScreen extends StatefulWidget {
  QuestionScreen({
    required this.onSelectedAnswer,
    super.key,
  });
  void Function(String) onSelectedAnswer;

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  int currentQuestion = 0;
  void chooseAnser(answer) {
    widget.onSelectedAnswer(answer);
    setState(() {
      currentQuestion++;
    });
  }

  @override
  Widget build(BuildContext context) {
    Question curQuestion = questions[currentQuestion];
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Q:/ ${curQuestion.question}",
            textAlign: TextAlign.center,
            style: const TextStyle(color: Color(0xFF006565), fontSize: 16),
          ),
          const SizedBox(
            height: 16,
          ),
          ...curQuestion.getShuffledAnsers().map(
                (e) => CustomButtonAnswer(
                    textAnswer: e,
                    action: () {
                      chooseAnser(e);
                    }),
              )
        ],
      ),
    );
  }
}
