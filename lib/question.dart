import 'package:flutter/material.dart';

// Wrapped Text widget in container & add some properties to Container & Text Widget

class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        questionText,
        style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    );
  }
}

//  Version 6 - created question widget to handle questions seperately

// class Question extends StatelessWidget {
//   final String questionText;
//   Widget build(BuildContext context) {
//     return Text(questionText);
//   }
// }
