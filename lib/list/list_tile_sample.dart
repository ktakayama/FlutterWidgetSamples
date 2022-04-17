import 'package:flutter/material.dart';

class ListTileSample extends StatelessWidget {
  const ListTileSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(toString())),
        body: ListView(children: const [
          ListTile(title: Text("Title only")),
          ListTile(
            leading: Icon(Icons.book),
            title: Text("Title"),
            subtitle: Text("sub ttile"),
          ),
          ListTile(
            leading: Icon(Icons.book),
            title: Text("Title"),
            subtitle: Text("sub ttile"),
            textColor: Colors.blue,
          ),
          ListTile(
            title: Text("leading, trailing"),
            leading: Icon(Icons.one_k),
            trailing: Icon(Icons.one_k_plus),
            iconColor: Colors.lightGreen,
          ),
          ListTile(
            title: Text("color"),
            leading: Icon(Icons.air),
            tileColor: Colors.lightGreen,
            iconColor: Colors.deepPurple,
            enableFeedback: true,
          ),
          ListTile(
            title: Text("enabled false"),
            leading: Icon(Icons.emoji_nature),
            enabled: false,
          )
        ]));
  }
}
