import 'package:flutter/material.dart';
import "dart:math" show pi;

class AnimatedContainerSample extends StatefulWidget {
  const AnimatedContainerSample({Key? key}) : super(key: key);

  @override
  State<AnimatedContainerSample> createState() =>
      _AnimatedContainerSampleState();
}

class _AnimatedContainerSampleState extends State<AnimatedContainerSample> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selected = !selected;
        });
      },
      child: Column(children: [
        Center(
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            width: selected ? 200 : 150,
            height: selected ? 150 : 150,
            color: selected ? Colors.red : Colors.green,
            alignment: Alignment.center,
            curve: Curves.easeInOut,
            child: Container(
              width: 50,
              height: 50,
              color: Colors.blue,
            ),
            onEnd: () => print('end'),
          ),
        ),
        const Divider(height: 50),
        Center(
          child: AnimatedContainer(
            transform: Matrix4.rotationZ(selected ? -pi / 4.0 : 0),
            transformAlignment: Alignment.center,
            duration: const Duration(milliseconds: 200),
            width: 150,
            height: 150,
            color: selected ? Colors.red : Colors.green,
            alignment: Alignment.center,
            child: Container(
              width: 50,
              height: 50,
              color: Colors.blue,
            ),
          ),
        ),
      ]),
    );
  }
}
