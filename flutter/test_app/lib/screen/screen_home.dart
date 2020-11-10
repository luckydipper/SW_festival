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
            ),
            _buildStep(width, "한 문장씩 입력해 주세요."),
            _buildStep(width, "친절하게 대답해주세요! 아직 모자라요"),
            _buildStep(width, "전 영어를 더 잘해요! 한국어는 구글이 도와주고있어요."),
            Padding(
              padding: EdgeInsets.only(bottom: width * 0.048),
            ),
            Container(
              // 버튼 만들기 raisedbutton, button theme
              padding: EdgeInsets.only(bottom: width * 0.036),
              child: Center(
                child: ButtonTheme(
                  minWidth: width * 0.08,
                  height: height * 0.05,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: RaisedButton(
                    child: Text(
                      '지금 챗봇 하기',
                      style: TextStyle(color: Colors.white),
                    ),
                    color: Colors.deepPurple,
                    onPressed: () {},
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget _buildStep(double width, String title) {
  return Container(
    padding: EdgeInsets.fromLTRB(
      width * 0.048,
      width * 0.024,
      width * 0.048,
      width * 0.024,
    ),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Icon(
          Icons.check_box,
          size: width * 0.04,
        ),
        Padding(
          padding: EdgeInsets.only(right: width * 0.024),
        ),
        Text(title)
      ],
    ),
  );
}
