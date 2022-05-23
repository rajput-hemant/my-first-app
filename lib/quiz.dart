import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {
  final List<Map> questions;
  final Function answerQuestion;
  final int questionIndex;

  Quiz({
    required this.questions,
    required this.answerQuestion,
    required this.questionIndex,
  });

// Version 11 - Adding Scoring System

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[questionIndex]['questionText'],
        ),
        ...(questions[questionIndex]['answers'] as List<Map>).map((answer) =>
            Answer(() => answerQuestion(answer['score']), answer['text']))
      ], 
    );
  }

// Version 10 - Splitting into Widgets

  // Widget build(BuildContext context) {
  //   return Column(
  //     children: [
  //       Question(
  //         questions[questionIndex]['questionText'],
  //       ),
  //       ...(questions[questionIndex]['answers'] as List<String>)
  //           .map((answer) => Answer(answerQuestion, answer))
  //     ],
  //   );
  // }
}
