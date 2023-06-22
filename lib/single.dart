import 'package:flutter/material.dart';
import 'package:flutter_2/models/final_answer.dart';
import 'package:flutter_2/quiz.dart';

class Single extends StatelessWidget {
  const Single({super.key});

  @override
  Widget build(context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          FinalAns(0, selected),
          FinalAns(1, selected),
          FinalAns(2, selected),
          FinalAns(3, selected),
          // FinalAns(4, selected),
          // FinalAns(5, selected),
        ]),
      ),
    );
  }
}
