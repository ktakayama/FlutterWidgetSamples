import 'package:flutter/material.dart';

class RadioListTileSample extends StatefulWidget {
  const RadioListTileSample({Key? key}) : super(key: key);

  @override
  State<RadioListTileSample> createState() => _RadioListTileSampleState();
}

class _RadioListTileSampleState extends State<RadioListTileSample> {
  List values = ['first', 'second', 'third'];
  String? current = 'first';

  _update(String? newValue) {
    setState(() {
      current = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      RadioListTile<String>(
        value: values[0],
        groupValue: current,
        onChanged: _update,
        title: const Text("Basic", textScaleFactor: 1.2),
      ),
      RadioListTile<String>(
        value: values[1],
        groupValue: current,
        onChanged: _update,
        title: const Text("Active color", textScaleFactor: 1.2),
        subtitle: const Text("subtitle"),
        activeColor: Colors.yellow,
      ),
      RadioListTile<String>(
        value: values[1],
        groupValue: current,
        onChanged: _update,
        title: const Text("Tile color", textScaleFactor: 1.2),
        tileColor: Colors.black26,
      ),
      RadioListTile<String>(
        value: values[2],
        groupValue: current,
        onChanged: _update,
        title: const Text("Secondary", textScaleFactor: 1.2),
        secondary: const Icon(Icons.note),
      ),
    ]);
  }
}
