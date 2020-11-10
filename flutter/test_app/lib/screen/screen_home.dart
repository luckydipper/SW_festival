import 'package:flutter/material.dart';
// header file을 가져오는 느낌, lib

class HomeScreen extends StatefulWidget {
  /*Inheritance임. subclass 기능 추가, HomeScreen은 sub class
  statefulWidget은 base super class*/
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override // getter setter method 가져옴
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double width = screenSize.width;
    double height = screenSize.height;

    return SafeArea(
      //맨 위와 아래에 간섭하지 않게 하는 것
      child: Scaffold(
        appBar: AppBar(
          title: Text("flutter chatbot"),
          backgroundColor: Colors.deepPurple,
          leading: Container(), //좌측의 버튼을 지움. 뒤로가기 막음
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Image.asset(
                "images/city.png",
                width: width * 0.8,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(width * 0.024),
            ),
            Text(
              "그 아래에 넣는 단어",
              style: TextStyle(
                fontSize: width * 0.065,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "이것이 첫 페이지입니다. 다음은 어떻할까요?",
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: EdgeInsets.all(width * 0.048),

              //This area is for function
            ),
          ],
        ),
      ),
    );
  }
}
