import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;

  Result(this.resultScore);

  String get resultPhrase {
    var resultText;
    resultScore >= 12
        ? resultText = 'You are Awesome!'
        : resultText = 'You are Average!';
    return resultText;
  }

//  Version 11 - Adding Scoring System

  Widget build(BuildContext context) {
    return Center(
      child: Text(
        resultPhrase,
        style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
      ),
    );
  }
}

//  Version 10 - Splitting into Widgets

// class Result extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Text(
//         'You did it!',
//         style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
//       ),
//     );
//   }
// }
