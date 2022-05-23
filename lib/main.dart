import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

//  Version 3 - Added onPressed fn(s) for RaisedButton 

class MyApp extends StatelessWidget {
  void answerQuestion() {
    print('Answer 1 Choosen!');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('My First App!')),
        body: Column(
          children: [
            Text('The Question!'),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: () => print('Answer 2 Choosen!'),
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: () {
                // do something
                print('Answer 3 Choosen!');
              },
            ),
          ],
        ),
      ),
    );
  }
}

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
