import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppBarSample extends StatelessWidget {
  const AppBarSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var text = [
      AppBar(),
      AppBar(title: const Text('title')),
      AppBar(title: const Text('CenterTitle.false'), centerTitle: false),
      AppBar(title: const Text('Green'), backgroundColor: Colors.green),
      AppBar(
          title: const Text('white'),
          backgroundColor: Colors.white,
          foregroundColor: Colors.blue),
      AppBar(
          title: const Text('transparent'),
          backgroundColor: Colors.transparent),
      AppBar(title: const Text('leading'), leading: const Icon(Icons.add)),
      AppBar(
          title: const Text('actions'),
          actions: const [Icon(Icons.add), Icon(Icons.add_box)]),
    ];
    return Column(
      children: text
          .map((e) => Padding(padding: const EdgeInsets.all(8), child: e))
          .toList(),
    );
  }
}
