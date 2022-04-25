import 'package:flutter/material.dart';

class PageViewSample extends StatelessWidget {
  const PageViewSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = PageController();
    return PageView(
      controller: controller,
      children: [
        Center(child: Container(color: Colors.blue, width: 200, height: 200)),
        Center(child: Container(color: Colors.yellow, width: 200, height: 200)),
        Center(child: Container(color: Colors.red, width: 200, height: 200)),
        Center(child: Container(color: Colors.green, width: 200, height: 200)),
        Center(child: Container(color: Colors.grey, width: 200, height: 200)),
        Center(child: Container(color: Colors.purple, width: 200, height: 200)),
      ],
    );
  }
}
