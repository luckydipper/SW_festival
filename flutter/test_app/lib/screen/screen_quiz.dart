import 'package:flutter/material.dart';
import 'package:test_app/model/model_quiz.dart';

class QuizScreen extends StatefulWidget {
  List<Quiz> quizs;
  QuizScreen({this.quizs}); //이게 생성자인가? 퀴즈객체를 받을 수 있음
  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  // 3개의 상태값이 필요.
  List<int> _answers = [-1, -1, -1]; //정답
  List<bool> _answerState = [false, false, false]; //각각 정답이 눌려져 있나
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double width = screenSize.width;
    double height = screenSize.height;
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.deepPurple,
            body: Center(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.deepPurple),
                ),
                width: width * 0.85,
                height: height * 0.5,
              ),
            )));
  }
}
