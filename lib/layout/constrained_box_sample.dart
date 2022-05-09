import 'package:flutter/material.dart';

class ConstrainedBoxSample extends StatelessWidget {
  const ConstrainedBoxSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        children: [
          Container(
            color: Colors.green,
            child: const Card(child: Text('none', textScaleFactor: 2)),
          ),
          const Divider(),
          Container(
            color: Colors.red,
            child: ConstrainedBox(
              constraints: const BoxConstraints(minHeight: 10),
              child:
                  const Card(child: Text('minHeight 10', textScaleFactor: 2)),
            ),
          ),
          const Divider(),
          Container(
            color: Colors.blue,
            child: ConstrainedBox(
              constraints: const BoxConstraints(minHeight: 100),
              child:
                  const Card(child: Text('minHeight 100', textScaleFactor: 2)),
            ),
          ),
          const Divider(),
          Container(
            color: Colors.yellow,
            child: ConstrainedBox(
              constraints: BoxConstraints.tight(const Size(100, 100)),
              child: const Card(child: Text('tight', textScaleFactor: 2)),
            ),
          ),
          const Divider(),
        ],
      ),
    );
  }
}
