import 'package:flutter/material.dart';

class CustomButtonAnswer extends StatelessWidget {
  const CustomButtonAnswer({
    super.key,
    required this.textAnswer,
    required this.action,
  });
  final String textAnswer;
  final void Function() action;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextButton(
        onPressed: action,
        style: TextButton.styleFrom(
          
          alignment: Alignment.center,
          foregroundColor: const Color(0xFFFFFFFF),
          backgroundColor: const Color(0xFF006565),
          fixedSize: const Size.fromWidth(double.maxFinite),
          
        ),
        child: Text(textAnswer,textAlign: TextAlign.center,),
      ),
    );
  }
}
