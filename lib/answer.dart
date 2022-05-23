// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

// Version 8 - Widget updated
class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.tryParse('50'),
      width: double.tryParse('150'),
      padding: EdgeInsets.only(bottom: 10),
      child: RaisedButton(
        elevation: 10,
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(answerText),
        onPressed: selectHandler,
      ),
    );
  }
}

// Version 7 - created answer widget to handle answers seperately

// class Answer extends StatelessWidget {
//   final VoidCallback selectHandler;

//   Answer(this.selectHandler);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: double.infinity,
//       child: RaisedButton(
//         color: Colors.blue,
//         textColor: Colors.white,
//         child: Text('Answer 1'),
//         onPressed: selectHandler,
//       ),
//     );
//   }
// }
