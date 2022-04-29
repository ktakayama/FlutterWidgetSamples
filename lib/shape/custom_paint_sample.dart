import 'package:flutter/material.dart';

class CustomPaintSample extends StatelessWidget {
  const CustomPaintSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Wrap(
        runSpacing: 20,
        spacing: 20,
        children: [
          SizedBox(
            width: 100,
            height: 100,
            child: CustomPaint(
              size: const Size(100, 100),
              painter: RectPainter(Colors.red),
              child: const Text("rect red"),
            ),
          ),
          CustomPaint(
            size: const Size(100, 100),
            painter: RectPainter(Colors.blue),
            child: const Text("rect blue"),
          ),
          SizedBox(
            width: 100,
            height: 100,
            child: CustomPaint(
              painter: OvalPainter(Colors.green),
              child: const Center(child: Text("oval")),
            ),
          ),
        ],
      ),
    );
  }
}

class RectPainter extends CustomPainter {
  Color color;
  RectPainter(this.color);

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawRect(
        Rect.fromLTWH(0, 0, size.width, size.height), Paint()..color = color);
  }

  @override
  bool shouldRepaint(RectPainter oldDelegate) {
    return oldDelegate.color != color;
  }
}

class OvalPainter extends CustomPainter {
  Color color;
  OvalPainter(this.color);

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawOval(
        Rect.fromLTWH(0, 0, size.width, size.height), Paint()..color = color);
  }

  @override
  bool shouldRepaint(OvalPainter oldDelegate) {
    return oldDelegate.color != color;
  }
}
