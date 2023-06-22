import 'package:flutter/material.dart';
import 'package:flutter_2/data/questionsss.dart';

class FinalAns extends StatelessWidget {
  FinalAns(this.count, this.useranswer, {super.key});

  int count;
  List<String> useranswer;

  @override
  Widget build(context) {
    return Column(children: [
      Text(
        questions[count].text,
        style: const TextStyle(color: Colors.white, fontSize: 20),
      ),
      const SizedBox(height: 10,),
      Text(
        useranswer[count],
        style: const TextStyle(
            color: Color.fromARGB(255, 167, 121, 187), fontSize: 15),
      ),

      Text(
        questions[count].answer[0],
        style: const TextStyle(
            color: Color.fromARGB(255, 84, 173, 241), fontSize: 15),
            
      ),
     const SizedBox(height: 20,)
    ]);
  }
}
