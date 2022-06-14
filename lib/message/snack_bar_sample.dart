import 'package:flutter/material.dart';

class Item {
  String title;
  Function() action;
  Item(this.title, this.action);
}

class SnackBarSample extends StatelessWidget {
  const SnackBarSample({super.key});

  @override
  Widget build(BuildContext context) {
    var items = [
      Item(
        'Simple SnackBar',
        () => ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Here I am')),
        ),
      ),
      Item(
        'backgroundColor.red',
        () => ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
              content: Text('Here I am'), backgroundColor: Colors.red),
        ),
      ),
    ];
    return ListView.separated(
        separatorBuilder: (BuildContext context, int index) => const Divider(),
        padding: const EdgeInsets.all(16),
        itemCount: items.length,
        itemBuilder: (_, i) => ListTile(
              title: Text(items[i].title),
              onTap: items[i].action,
            ));
  }
}
