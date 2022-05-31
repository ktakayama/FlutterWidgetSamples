import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoNavigationBarSample extends StatelessWidget {
  const CupertinoNavigationBarSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var text = [
      const CupertinoNavigationBar(),
      const CupertinoNavigationBar(middle: Text('title')),
      const CupertinoNavigationBar(
          middle: Text('leading'), leading: Icon(Icons.add)),
      const CupertinoNavigationBar(
          middle: Text('trailing'), trailing: Icon(Icons.build)),
      const CupertinoNavigationBar(
          middle: Text('title'), previousPageTitle: 'Back'),
      const CupertinoNavigationBar(
          middle: Text('title'), backgroundColor: Colors.red),
      CupertinoNavigationBar(
          middle: const Text('border'), border: Border.all()),
      AppBar(title: const Text('AppBar')),
      const CupertinoNavigationBar(middle: Text('CupertinoNavigationBar')),
    ];
    return ListView(
      children: text
          .map((e) => Padding(padding: const EdgeInsets.all(8), child: e))
          .toList(),
    );
  }
}
