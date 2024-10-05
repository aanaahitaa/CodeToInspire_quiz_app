import 'package:flutter/material.dart';
import 'package:quiz/question.dart';
void main() => runApp(Quiz());

class Quiz extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Icon> scoreKeeper = [];

  List<bool> answers = [false, true, true];
  List<Question> questionsList = [
    Question(q: 'You can lead a cow down stairs but not up stairs.', a: false),
    Question(q: 'Approximately one quarter of human bones are in the feet.', a: true),
    Question(q: 'A slug\'s blood is green.', a: true)
  ];
  int questionNumber = 0;
  @override
  Widget build(BuildContext context) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Center(
              child: Text(
                questionsList[questionNumber].questionText,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: TextButton(
              child: Text('True'),
              style: TextButton.styleFrom(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white,
                  textStyle: TextStyle(fontSize: 20),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5))),
              onPressed: () {
                // User clicked true
                bool correctAnswer = questionsList[questionNumber].answer;
                if(correctAnswer == true){
                  print('User chose the correct answer');
                }else{
                  print('User chose the wrong answer');
                }
                setState(() {
                  questionNumber++;
                });
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: TextButton(
              child: Text('False'),
              style: TextButton.styleFrom(
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.white,
                  textStyle: TextStyle(fontSize: 20),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5))),
              onPressed: () {
                // User clicked false
                bool correctAnswer = questionsList[questionNumber].answer;
                if(correctAnswer == false){
                  print('User chose the correct answer');
                }else{
                  print('User chose the wrong answer');
                }
                setState(() {
                  questionNumber++;
                });
              },
            ),
          ),
        ),
        Row(children: scoreKeeper),
      ],
    );
  }
}

// TODO
