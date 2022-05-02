import 'package:flutter/material.dart';

class DismissibleSample extends StatefulWidget {
  const DismissibleSample({Key? key}) : super(key: key);

  @override
  State<DismissibleSample> createState() => _DismissibleSampleState();
}

class _DismissibleSampleState extends State<DismissibleSample> {
  List<Text> items = List.generate(100, (int index) => Text('Index: $index'));

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Dismissible(
            background: Container(color: Colors.blue),
            secondaryBackground: Container(
              color: Colors.red,
              child: const Padding(
                padding: EdgeInsets.all(12),
                child: Align(
                    alignment: Alignment.centerRight,
                    child: Icon(Icons.close, color: Colors.white)),
              ),
            ),
            key: ValueKey(items[index]),
            onDismissed: (direction) => setState(() {
                  if (direction == DismissDirection.endToStart) {
                    items.removeAt(index);
                  } else {
                    items.removeAt(index);
                  }
                }),
            child: ListTile(title: items[index]));
      },
    );
  }
}
