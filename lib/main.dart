import 'package:flutter/material.dart';
import 'quiz_brain.dart';

QuizBrain quizBrain= QuizBrain(); //creation of quizBrain Object.

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(centerTitle: true,
          title: Text('Quiz'),
        ),
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
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
List <Icon> scoreKeeper = [];

    @override
  Widget build(BuildContext context) {
    return Center(
                  child: Column(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Expanded(
                    flex: 5,
                    child: Padding(
              padding: EdgeInsets.all(10.0),
                    child: Center(
                      child: Text(
                        quizBrain.getQuestion(),
                        textAlign: TextAlign.center,
                  style: TextStyle(color:Colors.white,
                  fontSize: 25),
                  ),
                    ),
                    ),
                  ), 
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: TextButton(
                      onPressed: () {
                        bool correctAnswer = quizBrain.getCorrect();
                        if (correctAnswer == true){}
                        else{}
                        setState(() {
                          quizBrain.nextQuestion();
                        });
                      },
                      child: Text('True',
                  style: TextStyle(color:Colors.white,
                  fontSize: 20),
                  ),
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.green
                      ),
                  ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: TextButton(
                      onPressed: () {
                        bool correctAnswer = quizBrain.getCorrect();
                        if (correctAnswer == true){}
                        else{} 
                        setState(() {
                          quizBrain.nextQuestion();
                        });
                      },
                      child: Text('False',
                  style: TextStyle(color:Colors.white,
                  fontSize: 20),
                  ),
                  style: TextButton.styleFrom(
                        backgroundColor: Colors.red
                      ),
                  ),
                    ),
                  ),
                  Row(
                    children: scoreKeeper,
                  ),
                ],
              ),
    ); 
        
  }
}