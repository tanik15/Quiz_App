import 'package:flutter/material.dart';
import 'package:flutter_2/ans_button.dart';
import 'package:flutter_2/data/questionsss.dart';
import 'package:google_fonts/google_fonts.dart';

class Question extends StatefulWidget {
  const Question({super.key, required this.onselectedanswer});
  final void Function(String answer) onselectedanswer;
  @override
  State<Question> createState() {
    return _QuestionState();
  }
}

class _QuestionState extends State<Question> {
  var index = 0;
  void changeindex(String selectedanswer) {
    widget.onselectedanswer(selectedanswer);
    setState(() {
      index++;
      
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentquestion = questions[index];
    return Center(
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                currentquestion.text,
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                    color: const Color.fromARGB(255, 123, 104, 169),
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ...currentquestion.getshuffleanswer().map((item) {
              return AnsButton(
                text: item,
                tabb: () {
                  changeindex(item);
                },
              );
            })
          ],
        ),
      ),
    );
  }
}
