import 'package:flutter/material.dart';

class WrapSample extends StatelessWidget {
  const WrapSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8,
      runSpacing: 44,
      children: [
        Container(color: Colors.blue, width: 100, height: 100),
        Container(color: Colors.yellow, width: 100, height: 100),
        Container(color: Colors.red, width: 100, height: 100),
        Container(color: Colors.green, width: 100, height: 100),
        Container(color: Colors.grey, width: 100, height: 100),
        Container(color: Colors.purple, width: 100, height: 100),
        Container(color: Colors.deepOrange, width: 100, height: 100),
        Container(color: Colors.lightBlueAccent, width: 100, height: 100),
      ],
    );
  }
}
