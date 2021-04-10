import 'package:flutter/widgets.dart';

class ResultView extends StatelessWidget {
  String stringTime;

  ResultView({this.stringTime}) {}

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text('今日夕陽時間', style: TextStyle(fontSize: 18)),
        Text('$stringTime', style: TextStyle(fontSize: 87)),
      ],
    );
  }
}
