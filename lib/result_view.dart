import 'package:flutter/widgets.dart';

class ResultView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text('今日夕陽時間', style: TextStyle(fontSize: 18)),
        Text('18:47', style: TextStyle(fontSize: 87)),
      ],
    );
  }

}