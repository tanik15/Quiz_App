import 'package:flutter/material.dart';

class AnsButton extends StatelessWidget {
  const AnsButton({
    super.key,
    required this.text,
    required this.tabb,
  });
  final String text;
  final void Function() tabb;
  @override
  Widget build(context) {
    return ElevatedButton(
      onPressed: tabb,
      style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
      child: Text(text,textAlign: TextAlign.center,),
    );
  }
}
