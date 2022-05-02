import 'package:flutter/material.dart';

class AlignSample extends StatelessWidget {
  const AlignSample({Key? key}) : super(key: key);

  Container _container(Widget child) {
    return Container(color: Colors.blue, width: 120, height: 80, child: child);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Wrap(
        spacing: 20,
        runSpacing: 20,
        children: [
          _container(const Align(
              alignment: Alignment.topLeft,
              child: Text('topLeft', textScaleFactor: 1.2))),
          _container(const Align(
              alignment: Alignment.topRight,
              child: Text('topRight', textScaleFactor: 1.2))),
          _container(const Align(
              alignment: Alignment.centerRight,
              child: Text('centerRight', textScaleFactor: 1.2))),
          _container(const Align(
              alignment: Alignment.bottomLeft,
              child: Text('bottomLeft', textScaleFactor: 1.2))),
          _container(const Align(
              alignment: Alignment(0.0, 0.0),
              child: Text('★', textScaleFactor: 1.2))),
          _container(const Align(
              alignment: Alignment(0.25, 0.25),
              child: Text('★', textScaleFactor: 1.2))),
          _container(const Align(
              alignment: Alignment(0.25, -0.50),
              child: Text('★', textScaleFactor: 1.2))),
        ],
      ),
    );
  }
}
