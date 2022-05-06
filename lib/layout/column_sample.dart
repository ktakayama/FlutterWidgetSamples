import 'package:flutter/material.dart';

class ColumnSample extends StatelessWidget {
  const ColumnSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        children: [
          Column(
            children: [
              Container(
                height: 44,
                width: 88,
                color: Colors.blue,
                child: const Center(
                  child: Text("Default", style: TextStyle(color: Colors.white)),
                ),
              ),
              const Text("Text"),
            ],
          ),
          const VerticalDivider(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                height: 44,
                width: 88,
                color: Colors.blue,
                child: const Center(
                  child: Text("CrossAxis\nend",
                      style: TextStyle(color: Colors.white)),
                ),
              ),
              const Text("Text"),
            ],
          ),
          const VerticalDivider(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 44,
                width: 88,
                color: Colors.blue,
                child: const Center(
                  child: Text("MainAxis\ncenter",
                      style: TextStyle(color: Colors.white)),
                ),
              ),
              const Text("Text"),
            ],
          ),
          const VerticalDivider(),
          Column(
            verticalDirection: VerticalDirection.up,
            children: [
              Container(
                height: 44,
                width: 88,
                color: Colors.blue,
                child: const Center(
                  child: Text("Vertical\nup",
                      style: TextStyle(color: Colors.white)),
                ),
              ),
              const Text("Line1"),
              const Text("Line2"),
              const Text("Line3"),
            ],
          ),
        ],
      ),
    );
  }
}
