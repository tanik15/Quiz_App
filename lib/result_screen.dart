import 'package:flutter/material.dart';
import 'package:flutter_2/models/final_answer.dart';
import 'package:flutter_2/quiz.dart';
import 'package:flutter_2/data/questionsss.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(this.restart, {super.key});

  final void Function() restart;
  int checkAns() {
    int right = 0;
    int count = 0;
    for (count = 0; count < questions.length; count++) {
      String correctans = questions[count].answer[0];
      if (correctans == selected[count]) {
        right++;
      }
    }

    return right;
  }

  @override
  Widget build(context) {
    int right = checkAns();
    int total = questions.length;
    return SafeArea(
      child: Container(
        margin: const EdgeInsets.only(top: 60, left: 20, right: 10),
        child: Column(
          children: [
            Text(
              "You answered $right out of $total questions correctly!",
              style: const TextStyle(color: Colors.white, fontSize: 30),
            ),
            const SizedBox(
              height: 70,
            ),
            SizedBox(
              height: 400,
              child: SingleChildScrollView(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FinalAns(0, selected),
                      FinalAns(1, selected),
                      FinalAns(2, selected),
                      FinalAns(3, selected),
                      FinalAns(4, selected),
                      FinalAns(5, selected),
                    ]),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent),
                onPressed: restart,
                icon: const Icon(Icons.restart_alt),
                label: const Text("Restart Quiz"))
          ],
        ),
      ),
    );
  }
}
