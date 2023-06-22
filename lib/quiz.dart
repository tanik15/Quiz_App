import 'package:flutter/material.dart';
import 'package:flutter_2/data/questionsss.dart';
import 'package:flutter_2/question.dart';
import 'package:flutter_2/result_screen.dart';
import 'package:flutter_2/start_screen.dart';

class Quiz extends StatefulWidget {
  
  const Quiz({super.key});

  @override
  State<StatefulWidget> createState() {
    return _QuizState();
  }
}

var activescreen = "start-screen";
List<String> selected = [];

class _QuizState extends State<Quiz> {
  void switchScreen() {
    setState(() {
      activescreen = "question-screen";
    });
  }

  void start() {
    setState(() {
      selected = [];
      activescreen = "start-screen";
    });
  }

  void selectedAns(String answer) {
    selected.add(answer);
    if (selected.length == questions.length) {
      setState(() {
        activescreen = "result-screen";
        // selected = [];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    
    Widget screenWidget = StartScreen(switchScreen);
    if (activescreen == "question-screen") {
      screenWidget = Question(
        onselectedanswer: selectedAns,
      );
    }
    if (activescreen == "result-screen") {
      screenWidget = ResultScreen(start);
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
            Color.fromARGB(255, 15, 4, 117),
            Color.fromARGB(255, 62, 3, 125)
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
          child: screenWidget,
        ),
      ),
    );
  }
}
