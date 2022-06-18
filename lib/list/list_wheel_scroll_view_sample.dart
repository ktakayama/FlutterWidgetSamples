import 'package:flutter/material.dart';

class ListWheelScrollViewSample extends StatelessWidget {
  const ListWheelScrollViewSample({super.key});

  @override
  Widget build(BuildContext context) {
    var items =
        List.generate(60, (index) => ListTile(title: Text("List $index")));
    double width = 90;
    return Row(
      children: [
        Container(
          color: Colors.red.withAlpha(20),
          width: width,
          height: double.infinity,
          child: ListWheelScrollView(
            children: items,
            itemExtent: 42,
          ),
        ),
        Container(
          color: Colors.green.withAlpha(20),
          width: width,
          height: double.infinity,
          child: ListWheelScrollView(
            children: items,
            itemExtent: 42,
            diameterRatio: 1.0,
          ),
        ),
        Container(
          color: Colors.blue.withAlpha(20),
          width: width,
          height: double.infinity,
          child: ListWheelScrollView(
            children: items,
            itemExtent: 42,
            offAxisFraction: -1.5,
          ),
        ),
        Container(
          color: Colors.yellow.withAlpha(20),
          width: width,
          height: double.infinity,
          child: ListWheelScrollView(
            children: items,
            itemExtent: 42,
            useMagnifier: true,
            magnification: 1.5,
          ),
        ),
      ],
    );
  }
}
