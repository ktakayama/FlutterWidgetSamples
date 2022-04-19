import 'package:flutter/material.dart';

class ExpandedSample extends StatelessWidget {
  const ExpandedSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        children: [
          SizedBox(
            width: 100,
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.green,
                  ),
                ),
                Container(
                  color: Colors.red,
                  height: 100,
                ),
                Expanded(
                  child: Container(
                    color: Colors.green,
                  ),
                ),
                Container(
                  color: Colors.red,
                  height: 100,
                ),
              ],
            ),
          ),
          SizedBox(
            width: 100,
            child: Column(
              children: [
                Container(
                  color: Colors.blue,
                  height: 100,
                ),
                Expanded(
                  child: Container(
                    color: Colors.yellow,
                  ),
                ),
                Container(
                  color: Colors.blue,
                  height: 100,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
