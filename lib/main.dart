import 'package:flutter/material.dart'; // to use StatelessWidget


import './question.dart';
import './answer.dart';

// void main() {
//   runApp(MyApp()); // a function provided by flutter team by material.dart
// }
//  another method if this class recieve one expression like this one
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  // press CNTR + SHIFT + R to conver into StatefulWidget
  // PascalCase naming convention in which the first letter of each word in a compound word is capitalized.
  @override
  State<StatefulWidget> createState() {
    // ignore: todo
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  // (_) we use _ before name of the class to make it private _MyAppState
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      // setState is a function that forcesses flutter to re-rendered UI
      // not the intire UI but it's called Build agian of tthe widget that you called setState
      _questionIndex = _questionIndex + 1;
    });

    print(_questionIndex);
  }

  @override //
  Widget build(BuildContext context) {
    //build is a function or method  such as BuildContext  \\\ functions inside of classes named METHODS
    var questions = [
      'What\' your favorite color ?',
      'What\' your favorite Animal ?',
    ];
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('My First App'),
          ), // (,) for formating the code a bit nicer you can try (TRL + SHIFT + I) to format the code
          body: Column(
            children: [
              Question(
                questions[
                    _questionIndex], // another way to do it by questions.elementAt(0),
              ),
              // ElevatedButton(
              //   // this ElevatedButton it's the new button in flutter 2 it's the replacement of RaisedButton
              //   onPressed: _answerQuestion,
              //   // onpressed take a function
              //   // we don't use answerQuestion() because we're passing a pointer to flutter on that press not the return of the function
              //   child: Text('Answer 1'),
              // ),
              // ElevatedButton(
              //   // another way to put function in onPressed
              //   onPressed: () => print('Answer 2 chosen!'),
              //   child: Text('Answer 2'),
              // ),
              // ElevatedButton(
              //   // another way to put a long function into onPressed
              //   onPressed: () {
              //     print('Answer 3 chosen');
              //   },
              //   child: Text('Answer 3'),
              // ),

              Answer(_answerQuestion),
              Answer(_answerQuestion),
              Answer(_answerQuestion),
            ],
          )),
    ); // Scaffold gives you a default format for your app
  }
}
