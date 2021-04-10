import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ErrorView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.cloud_off, size: 120),
        Container(height: 10),
        ElevatedButton(
          child: Text(
            "重新載入",
            style: TextStyle(fontSize: 16),
          ),
          onPressed: () {
            print("aaaa");
          },
        ),
      ],
    );
  }
}
