import 'package:flutter/material.dart';

class CheckboxListTileSample extends StatefulWidget {
  const CheckboxListTileSample({Key? key}) : super(key: key);

  @override
  State<CheckboxListTileSample> createState() => _CheckboxListTileSampleState();
}

class _CheckboxListTileSampleState extends State<CheckboxListTileSample> {
  List values = [false, true];

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      CheckboxListTile(
        value: values[0],
        onChanged: (bool? newValue) {
          setState(() {
            values[0] = newValue!;
          });
        },
        title: const Text("Basic", textScaleFactor: 1.2),
      ),
      CheckboxListTile(
        value: values[1],
        onChanged: (bool? newValue) {
          setState(() {
            values[1] = newValue!;
          });
        },
        title: const Text("Checkbox color", textScaleFactor: 1.2),
        subtitle: const Text("subtitle"),
        checkColor: Colors.red,
        activeColor: Colors.yellow,
      ),
    ]);
  }
}
