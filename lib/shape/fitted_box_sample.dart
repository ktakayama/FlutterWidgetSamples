import 'package:flutter/material.dart';

class FittedBoxSample extends StatelessWidget {
  const FittedBoxSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Wrap(
        runSpacing: 20,
        spacing: 20,
        children: [
          Container(
            width: 150,
            height: 100,
            color: Colors.blue,
            child: FittedBox(
                fit: BoxFit.contain,
                child: Container(width: 150, height: 150, color: Colors.red)),
          ),
          Container(
            width: 300,
            height: 120,
            color: Colors.blue,
            child: FittedBox(
                fit: BoxFit.fitWidth,
                child: Image.network(
                    "https://via.placeholder.com/300x90.png?text=sample")),
          ),
          Container(
            width: 300,
            height: 120,
            color: Colors.blue,
            child: FittedBox(
                fit: BoxFit.fill,
                child: Image.network(
                    "https://via.placeholder.com/300x90.png?text=sample")),
          ),
          Container(
            width: 300,
            height: 120,
            color: Colors.blue,
            child: FittedBox(
                fit: BoxFit.fitHeight,
                alignment: Alignment.centerLeft,
                child: Image.network(
                    "https://via.placeholder.com/300x90.png?text=sample")),
          ),
        ],
      ),
    );
  }
}
