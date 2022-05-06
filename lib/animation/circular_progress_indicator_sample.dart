import 'package:flutter/material.dart';

class CircularProgressIndicatorSample extends StatelessWidget {
  const CircularProgressIndicatorSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Wrap(
        spacing: 40,
        runSpacing: 40,
        children: const [
          CircularProgressIndicator(),
          CircularProgressIndicator(color: Colors.red),
          CircularProgressIndicator(backgroundColor: Colors.orange),
          CircularProgressIndicator(
              color: Colors.purple, backgroundColor: Colors.yellow),
          CircularProgressIndicator(strokeWidth: 8.0),
          SizedBox(
            width: 80,
            height: 80,
            child: CircularProgressIndicator(strokeWidth: 4.0),
          ),
          SizedBox(
            width: 140,
            height: 80,
            child: CircularProgressIndicator(strokeWidth: 12.0),
          ),
        ],
      ),
    );
  }
}
