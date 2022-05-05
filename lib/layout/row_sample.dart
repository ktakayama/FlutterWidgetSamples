import 'package:flutter/material.dart';

class RowSample extends StatelessWidget {
  const RowSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var widgets = [
      Container(color: Colors.blue, width: 50, height: 50),
      Container(color: Colors.red, width: 40, height: 40),
      Container(color: Colors.green, width: 80, height: 80),
      Container(color: Colors.yellow, width: 30, height: 30),
      Container(color: Colors.cyan, width: 60, height: 60),
    ];
    return SafeArea(
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(16),
            child: Text('Default', textScaleFactor: 2),
          ),
          Row(
            children: widgets,
          ),
          const Divider(),
          const Padding(
            padding: EdgeInsets.all(16),
            child: Text('CrossAxisAlignment.start', textScaleFactor: 2),
          ),
          Row(
            children: widgets,
            crossAxisAlignment: CrossAxisAlignment.start,
          ),
          const Divider(),
          const Padding(
            padding: EdgeInsets.all(16),
            child: Text('MainAxisAlignment.end', textScaleFactor: 2),
          ),
          Row(
            children: widgets,
            mainAxisAlignment: MainAxisAlignment.end,
          ),
        ],
      ),
    );
  }
}
