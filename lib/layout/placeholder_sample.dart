import 'package:flutter/material.dart';

class PlaceholderSample extends StatelessWidget {
  const PlaceholderSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: const [
            Placeholder(fallbackWidth: 60),
            Spacer(),
            Placeholder(fallbackHeight: 60),
            Spacer(),
            Placeholder(fallbackHeight: 60, fallbackWidth: 60),
            Spacer(),
            Placeholder(fallbackHeight: 60, strokeWidth: 4),
            Spacer(),
            Placeholder(fallbackHeight: 60, color: Colors.red),
          ],
        ),
      ),
    );
  }
}
