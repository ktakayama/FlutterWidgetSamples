import 'package:flutter/material.dart';

class IndexedStackSample extends StatefulWidget {
  const IndexedStackSample({Key? key}) : super(key: key);

  @override
  State<IndexedStackSample> createState() => _IndexedStackSampleState();
}

class _IndexedStackSampleState extends State<IndexedStackSample> {
  var _widgetIndex = 0;

  void _updateIndex() {
    setState(() {
      _widgetIndex += 1;
      if (_widgetIndex > 3) _widgetIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            const Text('IndexedStack', textScaleFactor: 2),
            const Divider(),
            IndexedStack(
              index: _widgetIndex,
              children: [
                Container(width: 200, height: 120, color: Colors.blue),
                Container(width: 180, height: 100, color: Colors.red),
                Container(width: 160, height: 80, color: Colors.yellow),
                const Text('Basic'),
              ],
            ),
            const Divider(),
            IndexedStack(
              index: _widgetIndex,
              alignment: Alignment.center,
              children: [
                Container(width: 200, height: 120, color: Colors.blue),
                Container(width: 180, height: 100, color: Colors.red),
                Container(width: 160, height: 80, color: Colors.yellow),
                const Text('Alignment.center'),
              ],
            ),
            const Divider(),
            IndexedStack(
              index: _widgetIndex,
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
            const Divider(),
            OutlinedButton(
                onPressed: _updateIndex,
                child: Text('updateIndex: $_widgetIndex')),
          ],
        ),
        const VerticalDivider(thickness: 2),
        Column(
          children: [
            const Text('Stack', textScaleFactor: 2),
            const Divider(),
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
        )
      ],
    );
  }
}
