import 'package:flutter/material.dart';

class OpacitySample extends StatefulWidget {
  const OpacitySample({Key? key}) : super(key: key);

  @override
  State<OpacitySample> createState() => _OpacitySampleState();
}

class _OpacitySampleState extends State<OpacitySample> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Opacity(
          opacity: 0.1,
          child: Container(
              width: 100,
              height: 100,
              color: Colors.red,
              child: const Center(child: Text('opacity 0.1'))),
        ),
        Opacity(
          opacity: 0.5,
          child: Container(
              width: 100,
              height: 100,
              color: Colors.red,
              child: const Center(child: Text('opacity 0.5'))),
        ),
        Opacity(
          opacity: 1.0,
          child: Container(
              width: 100,
              height: 100,
              color: Colors.red,
              child: const Center(child: Text('opacity 1.0'))),
        ),
        GestureDetector(
            onTap: () {
              setState(() {
                selected = !selected;
              });
            },
            child: AnimatedOpacity(
              duration: const Duration(seconds: 1),
              opacity: selected ? 1.0 : 0.25,
              child: Container(
                width: 100,
                height: 100,
                decoration: const BoxDecoration(
                    gradient:
                        LinearGradient(colors: [Colors.green, Colors.blue])),
              ),
            ))
      ],
    );
  }
}
