import 'package:flutter/material.dart';

class DraggableSample extends StatefulWidget {
  const DraggableSample({Key? key}) : super(key: key);

  @override
  State<DraggableSample> createState() => _DraggableSampleState();
}

class _DraggableSampleState extends State<DraggableSample> {
  int value = 0;
  String stringValue = '';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Wrap(
        spacing: 40,
        runSpacing: 40,
        children: [
          Draggable(
            data: 10,
            feedback: Container(
              color: Colors.yellow.withAlpha(200),
              height: 80,
              width: 80,
              child: const Icon(Icons.directions_run),
            ),
            childWhenDragging: Container(
              height: 120.0,
              width: 120.0,
              color: Colors.red,
              child: const Center(
                child: Text('childWhenDragging'),
              ),
            ),
            child: Container(
              height: 120.0,
              width: 120.0,
              color: Colors.cyanAccent,
              child: const Center(
                child: Text('Int'),
              ),
            ),
          ),
          Draggable(
            data: '・',
            feedback: Container(
              color: Colors.yellow.withAlpha(200),
              height: 120,
              width: 120,
              child: const Icon(Icons.directions_run),
            ),
            child: Container(
              height: 120.0,
              width: 120.0,
              color: Colors.blueAccent,
              child: const Center(
                child: Text('String'),
              ),
            ),
          ),
          DragTarget(
            builder: (context, candidateData, rejectedData) {
              return Container(
                height: 120.0,
                width: 120.0,
                color: Colors.cyan,
                child: Center(
                  child: Text('int: $value'),
                ),
              );
            },
            onAccept: (int data) {
              setState(() {
                value += data;
              });
            },
          ),
          DragTarget(
            builder: (context, candidateData, rejectedData) {
              return Container(
                height: 120.0,
                width: 120.0,
                color: Colors.blue,
                child: Center(
                  child: Text('string: $stringValue'),
                ),
              );
            },
            onAccept: (String data) {
              setState(() {
                stringValue += data;
              });
            },
          ),
        ],
      ),
    );
  }
}
