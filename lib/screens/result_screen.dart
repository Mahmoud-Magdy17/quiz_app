import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:quiz_app/models/user_answer_summary_model.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.userAnswersSummary});
  final List<UserAnswerSummay> userAnswersSummary;
  @override
  Widget build(BuildContext context) {
    log(userAnswersSummary[0].id.toString());
    return Container();
  }
}
