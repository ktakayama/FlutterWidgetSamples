import 'dart:ui';
import 'package:flutter/material.dart';

class BackdropFilterSample extends StatelessWidget {
  const BackdropFilterSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 20,
      children: [
        Stack(
          children: [
            Container(width: 100, height: 100, color: Colors.red),
            Positioned.fill(
                child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 5,
                sigmaY: 5,
              ),
              child: Container(color: Colors.black.withOpacity(0)),
            )),
          ],
        ),
      ],
    );
  }
}
