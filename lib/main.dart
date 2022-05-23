import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

//  Version 9 - Added Ternar Conditional Operator, to avoid app crash when questionIndex goes out of range

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    // for changing the state of the body text
    setState(() {
      _questionIndex += 1;
    });
    // _questionIndex += 1;
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    List<Map> questions = [
      {
        'questionText': 'What\'s your favourite color?',
        'answers': ['Black', 'Red', 'White', 'Green'],
      },
      {
        'questionText': 'What\'s your favourite animal?',
        'answers': ['Dog', 'Cat', 'Lion', 'Horse'],
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App!'),
        ),
        body: _questionIndex < questions.length
            ? Column(
                children: [
                  Question(
                    questions[_questionIndex]['questionText'],
                  ),
                  ...(questions[_questionIndex]['answers'] as List<String>)
                      .map((answer) => Answer(_answerQuestion, answer))
                ],
              )
            : Center(
                child: Text('You did it!'),
              ),
      ),
    );
  }
}

//  Version 8 - Updated questions var list if map w/ questionText & answers as key-value pairs
// question list is then mapped to list of Answer widgets

// class _MyAppState extends State<MyApp> {
//   var _questionIndex = 0;

//   void _answerQuestion() {
//     // for changing the state of the body text
//     setState(() {
//       _questionIndex += 1;
//     });
//     // _questionIndex += 1;
//     print(_questionIndex);
//   }

//   @override
//   Widget build(BuildContext context) {
//     var questions = [
//       {
//         'questionText': 'What\'s your favourite color?',
//         'answers': ['Black', 'Red', 'White', 'Green'],
//       },
//       {
//         'questionText': 'What\'s your favourite animal?',
//         'answers': ['Dog', 'Cat', 'Lion', 'Horse'],
//       },
//     ];
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('My First App!'),
//         ),
//         body: Column(
//           children: [
//             Question(
//               questions[_questionIndex]['questionText'] as String,
//             ),
//             ...(questions[_questionIndex]['answers'] as List<String>)
//                 .map((answer) => Answer(_answerQuestion, answer))
//           ],
//         ),
//       ),
//     );
//   }
// }

//  Version 7 - created answer widget to handle answers seperately

// class _MyAppState extends State<MyApp> {
//   var _questionIndex = 0;

//   void _answerQuestion() {
//     // for changing the state of the body text
//     setState(() {
//       _questionIndex += 1;
//     });
//     // _questionIndex += 1;
//     print(_questionIndex);
//   }

//   @override
//   Widget build(BuildContext context) {
//     var questions = [
//       'What\'s your favourite color?',
//       'What\'s your favourite animal?',
//     ];
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text('My First App!')),
//         body: Column(
//           children: [
//             Question(questions[_questionIndex]),
//             Answer(_answerQuestion),
//             Answer(_answerQuestion),
//             Answer(_answerQuestion),
//           ],
//         ),
//       ),
//     );
//   }
// }

//  Version 6 - created question widget to handle questions seperately

// class _MyAppState extends State<MyApp> {
//   var _questionIndex = 0;

//   void _answerQuestion() {
//     // for changing the state of the body text
//     setState(() {
//       _questionIndex += 1;
//     });
//     // _questionIndex += 1;
//     print(_questionIndex);
//   }

//   @override
//   Widget build(BuildContext context) {
//     var questions = [
//       'What\'s your favourite color?',
//       'What\'s your favourite animal?',
//     ];
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text('My First App!')),
//         body: Column(
//           children: [
//             Question(questions[_questionIndex]),
//             RaisedButton(
//               child: Text('Answer 1'),
//               onPressed: _answerQuestion,
//             ),
//             RaisedButton(
//               child: Text('Answer 2'),
//               onPressed: () => print('Answer 2 Choosen!'),
//             ),
//             RaisedButton(
//               child: Text('Answer 3'),
//               onPressed: () {
//                 // do something
//                 print('Answer 3 Choosen!');
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

//  Version 5 - refactored StatelessWidget to StatefulWidget abstract class

// class _MyAppState extends State<MyApp> {
//   var _questionIndex = 0;

//   void _answerQuestion() {
//     // for changing the state of the body text
//     setState(() {
//       _questionIndex += 1;
//     });
//     // _questionIndex += 1;
//     print(_questionIndex);
//   }

//   @override
//   Widget build(BuildContext context) {
//     var questions = [
//       'What\'s your favourite color?',
//       'What\'s your favourite animal?',
//     ];
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text('My First App!')),
//         body: Column(
//           children: [
//             Text(questions[_questionIndex]),
//             RaisedButton(
//               child: Text('Answer 1'),
//               onPressed: _answerQuestion,
//             ),
//             RaisedButton(
//               child: Text('Answer 2'),
//               onPressed: () => print('Answer 2 Choosen!'),
//             ),
//             RaisedButton(
//               child: Text('Answer 3'),
//               onPressed: () {
//                 // do something
//                 print('Answer 3 Choosen!');
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

//  Version 4 - Added question list

// class MyApp extends StatelessWidget {
//   var questionIndex = 0;
//   void answerQuestion() {
//     questionIndex += 1;
//     print(questionIndex);
//   }

//   @override
//   Widget build(BuildContext context) {
//     var questions = [
//       'What\'s your favourite color?',
//       'What\'s your favourite animal?',
//     ];
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text('My First App!')),
//         body: Column(
//           children: [
//             Text(questions[questionIndex]),
//             RaisedButton(
//               child: Text('Answer 1'),
//               onPressed: answerQuestion,
//             ),
//             RaisedButton(
//               child: Text('Answer 2'),
//               onPressed: () => print('Answer 2 Choosen!'),
//             ),
//             RaisedButton(
//               child: Text('Answer 3'),
//               onPressed: () {
//                 // do something
//                 print('Answer 3 Choosen!');
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

//  Version 3 - Added onPressed fn(s) for RaisedButton

// class MyApp extends StatelessWidget {
//   void answerQuestion() {
//     print('Answer 1 Choosen!');
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text('My First App!')),
//         body: Column(
//           children: [
//             Text('The Question!'),
//             RaisedButton(
//               child: Text('Answer 1'),
//               onPressed: answerQuestion,
//             ),
//             RaisedButton(
//               child: Text('Answer 2'),
//               onPressed: () => print('Answer 2 Choosen!'),
//             ),
//             RaisedButton(
//               child: Text('Answer 3'),
//               onPressed: () {
//                 // do something
//                 print('Answer 3 Choosen!');
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

//  Version 2 - Added text and buttons

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('My First App!'),
//         ),
//         body: Column(children: [
//           Text('The Question!'),
//           RaisedButton(
//             child: Text('Answer 1'),
//             onPressed: null,
//           ),
//           RaisedButton(
//             child: Text('Answer 2'),
//             onPressed: null,
//           ),
//           RaisedButton(
//             child: Text('Answer 3'),
//             onPressed: null,
//           ),
//         ]),
//       ),
//     );
//   }
// }

//  Version 1 - Getting Started

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text('My First App!')),
//         body: Text('This is my Default App!'),
//       ),
//     );
//   }
// }
