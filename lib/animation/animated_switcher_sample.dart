import 'package:flutter/material.dart';

class AnimatedSwitcherSample extends StatefulWidget {
  const AnimatedSwitcherSample({Key? key}) : super(key: key);

  @override
  State<AnimatedSwitcherSample> createState() => _AnimatedSwitcherSampleState();
}

class _AnimatedSwitcherSampleState extends State<AnimatedSwitcherSample> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AnimatedSwitcher(
          duration: const Duration(milliseconds: 1000),
          transitionBuilder: (Widget child, Animation<double> animation) {
            return ScaleTransition(scale: animation, child: child);
          },
          child: Text(
            'Scale $_count',
            key: ValueKey<int>(_count),
            textScaleFactor: 2,
          ),
        ),
        AnimatedSwitcher(
          duration: const Duration(milliseconds: 1000),
          transitionBuilder: (Widget child, Animation<double> animation) {
            return FadeTransition(opacity: animation, child: child);
          },
          child: Text(
            'Fade $_count',
            key: ValueKey<int>(_count),
            textScaleFactor: 2,
          ),
        ),
        AnimatedSwitcher(
          duration: const Duration(milliseconds: 1000),
          transitionBuilder: (Widget child, Animation<double> animation) {
            return RotationTransition(turns: animation, child: child);
          },
          child: Text(
            'Rotation $_count',
            key: ValueKey<int>(_count),
            textScaleFactor: 2,
          ),
        ),
        ElevatedButton(
          child: const Text('Increment'),
          onPressed: () {
            setState(() {
              _count += 1;
            });
          },
        ),
      ]
          .map((e) => Padding(padding: const EdgeInsets.all(16), child: e))
          .toList(),
    );
  }
}
