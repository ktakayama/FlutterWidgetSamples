import 'package:flutter/material.dart';

class StackSample extends StatelessWidget {
  const StackSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(width: 200, height: 120, color: Colors.blue),
            Container(width: 180, height: 100, color: Colors.red),
            Container(width: 160, height: 80, color: Colors.yellow),
            const Text('Basic'),
          ],
        ),
        const Divider(),
        Stack(
          alignment: Alignment.center,
          children: [
            Container(width: 200, height: 120, color: Colors.blue),
            Container(width: 180, height: 100, color: Colors.red),
            Container(width: 160, height: 80, color: Colors.yellow),
            const Text('Alignment.center'),
          ],
        ),
        const Divider(),
        Stack(
          alignment: Alignment.center,
          children: [
            Container(width: 200, height: 120, color: Colors.blue),
            Container(width: 180, height: 100, color: Colors.red),
            Container(
              width: 200,
              height: 120,
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Colors.white.withAlpha(220),
                  Colors.white.withAlpha(0)
                ]),
              ),
            ),
            const Text('Gradient overlay'),
          ],
        ),
      ],
    );
  }
}
