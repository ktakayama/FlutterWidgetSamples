import 'package:flutter/material.dart';
import 'package:widget_samples/animation/animated_container_sample.dart';
import 'package:widget_samples/animation/fade_transition_sample.dart';
import 'package:widget_samples/animation/transform_sample.dart';
import 'package:widget_samples/control/button_sample.dart';
import 'package:widget_samples/control/menu_button_sample.dart';
import 'package:widget_samples/filter/backdrop_filter_sample.dart';
import 'package:widget_samples/image/fade_in_image_sample.dart';
import 'package:widget_samples/layout/align_sample.dart';
import 'package:widget_samples/layout/expanded_sample.dart';
import 'package:widget_samples/layout/page_view_sample.dart';
import 'package:widget_samples/layout/sliver_app_bar.dart';
import 'package:widget_samples/layout/sliver_list_sample.dart';
import 'package:widget_samples/layout/table_sample.dart';
import 'package:widget_samples/layout/wrap_sample.dart';
import 'package:widget_samples/list/list_tile_sample.dart';
import 'package:widget_samples/list/list_view_separated_sample.dart';
import 'package:widget_samples/shape/clip_r_rect_sample.dart';
import 'package:widget_samples/shape/container_sample.dart';
import 'package:widget_samples/shape/custom_paint_sample.dart';
import 'package:widget_samples/shape/fitted_box_sample.dart';
import 'package:widget_samples/shape/opacity_sample.dart';
import 'package:widget_samples/text/text_sample.dart';

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
      WidgetGroup('Text', {
        'Text': () => const TextSample(),
      }),
      WidgetGroup('Control', {
        'Button': () => const ButtonSample(),
        'MenuButton': () => const MenuButtonSample(),
      }),
      WidgetGroup('Layout', {
        'Expanded': () => const ExpandedSample(),
        'Wrap': () => const WrapSample(),
        'PageView': () => const PageViewSample(),
        'Table': () => const TableSample(),
        'SliverAppBar': () => const SliverAppBarSample(),
        'SliverList': () => const SliverListSample(),
        'Align': () => const AlignSample(),
      }),
      WidgetGroup('Shape', {
        'Opacity': () => const OpacitySample(),
        'Container': () => const ContainerSample(),
        'ClipRRect': () => const ClipRRectSample(),
        'CustomPaint': () => const CustomPaintSample(),
        'FittedBox': () => const FittedBoxSample(),
      }),
      WidgetGroup('Animation', {
        'AnimatedContainer': () => const AnimatedContainerSample(),
        'FadeTransition': () => const FadeTransitionSample(),
        'Transform': () => const TransformSample(),
      }),
      WidgetGroup('ListView', {
        'ListTile': () => const ListTileSample(),
        'ListView.separated': () => const ListViewSeparatedSample(),
      }),
      WidgetGroup('Image', {
        'FadeInImage': () => const FadeInImageSample(),
      }),
      WidgetGroup('Filter', {
        'BackdropFilter': () => const BackdropFilterSample(),
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
