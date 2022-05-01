import 'package:flutter/material.dart';
import "dart:math" show pi;

class TransformSample extends StatelessWidget {
  const TransformSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Wrap(
        spacing: 40,
        runSpacing: 40,
        children: [
          Center(
            child: Transform(
              transform: Matrix4.rotationZ(-pi / 4.0),
              alignment: Alignment.center,
              child: Container(
                width: 50,
                height: 50,
                color: Colors.blue,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
