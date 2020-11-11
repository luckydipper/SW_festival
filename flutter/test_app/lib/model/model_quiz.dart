class Quiz {
  String title;
  List<String> candidates; //<>는 genric 제너릭 type, class pa의 type을 알려줌
  int answer;

  //생성자
  Quiz({this.title, this.candidates, this.answer});

  //map 사상, 함수, diction
  Quiz.formMap(Map<String, dynamic> map)
      : title = map['title'],
        candidates = map['candidates'],
        answer = map['answer'];
  //: initializer list,
  //1.클래스를 초기화 시키거나, 2.assert로 오류 일으키거나,
  //3. super,즉 부모님의 생성자를 불러올 수 있음
}
