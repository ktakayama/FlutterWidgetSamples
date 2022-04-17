import 'package:flutter/material.dart';
import 'package:widget_samples/list/list_tile_sample.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Widget Samples',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const WidgetList(),
    );
  }
}

class WidgetList extends StatelessWidget {
  const WidgetList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var widgets = <String, Function()>{
      'ListTile': () => const ListTileSample(),
    };
    var titles = widgets.keys.toList();
    return Scaffold(
      appBar: AppBar(title: const Text('Widget List')),
      body: ListView.separated(
        separatorBuilder: (BuildContext context, int index) => const Divider(),
        padding: const EdgeInsets.all(16),
        itemCount: widgets.length,
        itemBuilder: (context, i) => ListTile(
          title: Text(titles[i]),
          onTap: () => Navigator.of(context).push(
            MaterialPageRoute(builder: (context) {
              var body = widgets[titles[i]]!();
              return Scaffold(
                  appBar: AppBar(title: Text(body.toString())), body: body);
            }),
          ),
        ),
      ),
    );
  }
}
