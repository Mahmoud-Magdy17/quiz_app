import 'package:flutter/material.dart';
import 'package:quiz_app/models/user_answer_summary_model.dart';

class QuestionAnswerSummary extends StatelessWidget {
  const QuestionAnswerSummary({
    super.key,
    required this.answerSummay,
  });
  final UserAnswerSummay answerSummay;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundColor: answerSummay.answer==answerSummay.userAnswer?Colors.greenAccent:Colors.redAccent,
          foregroundColor: answerSummay.answer==answerSummay.userAnswer?const Color.fromARGB(255, 0, 42, 62):const Color.fromARGB(255, 253, 253, 253),
          radius: 24,
          child: Text(
            answerSummay.id.toString(),
          ),
        ),
        const SizedBox(
          width: 16,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                answerSummay.question,
                textAlign: TextAlign.start,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              Text(
                answerSummay.userAnswer,
                textAlign: TextAlign.start,
                style: const TextStyle(
                  color: Color.fromARGB(255, 9, 48, 1),
                  fontSize: 16,
                ),
              ),
              Text(
                answerSummay.answer,
                textAlign: TextAlign.start,
                style: const TextStyle(
                  color: Color.fromARGB(255, 231, 93, 0),
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
