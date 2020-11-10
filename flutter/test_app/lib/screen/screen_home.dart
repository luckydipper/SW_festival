import 'package:flutter/material.dart';
// header file을 가져오는 느낌, lib

class HomeScreen extends StatefulWidget {
  /*Inheritance임. subclass 기능 추가, HomeScreen은 sub class
  statefulWidget은 base super class*/
  @override
  _HomeScreenState = createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override // getter setter method 가져옴
  Widger build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double width = screenSize.width;
    double height = screenSize.height;

    return SafeArea( //맨 위와 아래에 간섭하지 않게 하는 것
      child: Scaffold(
        appBar: AppBar(
          title: Text("flutter chatbot"),
          backgroundColor: Colors.deeppurple,
          leading: Container()))
  }
}