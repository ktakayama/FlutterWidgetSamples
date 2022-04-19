import 'package:flutter/material.dart';
import 'package:widget_samples/list/list_tile_sample.dart';
import 'package:widget_samples/list/list_view_separated_sample.dart';

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
      home: const GroupList(),
    );
  }
}

class WidgetGroup {
  String name;
  Map<String, Function()> data;
  WidgetGroup(this.name, this.data);
}

class GroupList extends StatelessWidget {
  const GroupList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var widgets = [
      WidgetGroup('ListView', {
        'ListTile': () => const ListTileSample(),
        'ListView.separated': () => const ListViewSeparatedSample(),
      }),
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Widget List')),
      body: SafeArea(
        maintainBottomViewPadding: true,
        child: ListView.separated(
          separatorBuilder: (BuildContext context, int index) =>
              const Divider(),
          padding: const EdgeInsets.all(16),
          itemCount: widgets.length,
          itemBuilder: (context, i) => ListTile(
            // title: Text(widgets[i]['name']),
            title: Text(widgets[i].name),
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(builder: (context) {
                var body = WidgetList(group: widgets[i]);
                return Scaffold(
                    appBar: AppBar(title: Text(widgets[i].name)), body: body);
              }),
            ),
          ),
        ),
      ),
    );
  }
}

class WidgetList extends StatelessWidget {
  final WidgetGroup group;
  const WidgetList({Key? key, required this.group}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var widgets = group.data;
    var titles = widgets.keys.toList();
    return SafeArea(
      maintainBottomViewPadding: true,
      child: ListView.separated(
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
