import 'package:flutter/material.dart';
import 'package:test_app/screen/screen_home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //Stateless Widget.. 상태가 없는 위젯
  //Stateful Widget.. 상태가 있는 위젯??
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: HomeScreen(),
    );
  }
}
