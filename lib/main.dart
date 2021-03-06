import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:widget_samples/animation/animated_container_sample.dart';
import 'package:widget_samples/animation/animated_icon_sample.dart';
import 'package:widget_samples/animation/animated_switcher_sample.dart';
import 'package:widget_samples/animation/circular_progress_indicator_sample.dart';
import 'package:widget_samples/animation/fade_transition_sample.dart';
import 'package:widget_samples/animation/transform_sample.dart';
import 'package:widget_samples/bar/app_bar_sample.dart';
import 'package:widget_samples/bar/cupertino_navigation_bar_sample.dart';
import 'package:widget_samples/control/button_sample.dart';
import 'package:widget_samples/control/dialog_sample.dart';
import 'package:widget_samples/control/draggable_sample.dart';
import 'package:widget_samples/control/menu_button_sample.dart';
import 'package:widget_samples/control/show_date_picker_sample.dart';
import 'package:widget_samples/control/show_date_range_picker_sample.dart';
import 'package:widget_samples/control/show_modal_bottom_sheet_sample.dart';
import 'package:widget_samples/control/toggle_buttons_sample.dart';
import 'package:widget_samples/data/media_query_sample.dart';
import 'package:widget_samples/filter/backdrop_filter_sample.dart';
import 'package:widget_samples/filter/color_filter_sample.dart';
import 'package:widget_samples/form/form_sample.dart';
import 'package:widget_samples/image/fade_in_image_sample.dart';
import 'package:widget_samples/image/icon_sample.dart';
import 'package:widget_samples/image/image_sample.dart';
import 'package:widget_samples/layout/align_sample.dart';
import 'package:widget_samples/layout/column_sample.dart';
import 'package:widget_samples/layout/constrained_box_sample.dart';
import 'package:widget_samples/layout/data_table_sample.dart';
import 'package:widget_samples/layout/drawer_sample.dart';
import 'package:widget_samples/layout/expanded_sample.dart';
import 'package:widget_samples/layout/indexed_stack_sample.dart';
import 'package:widget_samples/layout/page_view_sample.dart';
import 'package:widget_samples/layout/placeholder_sample.dart';
import 'package:widget_samples/layout/row_sample.dart';
import 'package:widget_samples/layout/sized_box_sample.dart';
import 'package:widget_samples/layout/sliver_app_bar.dart';
import 'package:widget_samples/layout/sliver_list_sample.dart';
import 'package:widget_samples/layout/spacer_sample.dart';
import 'package:widget_samples/layout/stack_sample.dart';
import 'package:widget_samples/layout/table_sample.dart';
import 'package:widget_samples/layout/wrap_sample.dart';
import 'package:widget_samples/list/checkbox_list_tile_sample.dart';
import 'package:widget_samples/list/dismissible_sample.dart';
import 'package:widget_samples/list/list_tile_sample.dart';
import 'package:widget_samples/list/list_view_separated_sample.dart';
import 'package:widget_samples/list/list_wheel_scroll_view_sample.dart';
import 'package:widget_samples/list/radio_list_tile_sample.dart';
import 'package:widget_samples/list/refresh_indicator_sample.dart';
import 'package:widget_samples/message/snack_bar_sample.dart';
import 'package:widget_samples/shape/clip_r_rect_sample.dart';
import 'package:widget_samples/shape/container_sample.dart';
import 'package:widget_samples/shape/custom_paint_sample.dart';
import 'package:widget_samples/shape/fitted_box_sample.dart';
import 'package:widget_samples/shape/opacity_sample.dart';
import 'package:widget_samples/text/rich_text_sample.dart';
import 'package:widget_samples/text/selectable_text_sample.dart';
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
        'RichText': () => const RichTextSample(),
        'SelectableText': () => const SelectableTextSample(),
      }),
      WidgetGroup('Control', {
        'Button': () => const ButtonSample(),
        'MenuButton': () => const MenuButtonSample(),
        'ToggleButtons': () => const ToggleButtonsSample(),
        'Draggable': () => const DraggableSample(),
        'ShowDatePicker': () => const ShowDatePickerSample(),
        'ShowDateRangePicker': () => const ShowDateRangePickerSample(),
        'ShowModalBottomSheet': () => const ShowModalBottomSheetSample(),
        'Dialog': () => const DialogSample(),
      }),
      WidgetGroup('Form', {
        'Form': () => const FormSample(),
      }),
      WidgetGroup('Message', {
        'SnackBar': () => const SnackBarSample(),
      }),
      WidgetGroup('Layout', {
        'Expanded': () => const ExpandedSample(),
        'Wrap': () => const WrapSample(),
        'Row': () => const RowSample(),
        'Column': () => const ColumnSample(),
        'Stack': () => const StackSample(),
        'DataTable': () => const DataTableSample(),
        'IndexedStack': () => const IndexedStackSample(),
        'PageView': () => const PageViewSample(),
        'Table': () => const TableSample(),
        'SliverAppBar': () => const SliverAppBarSample(),
        'SliverList': () => const SliverListSample(),
        'Align': () => const AlignSample(),
        'Spacer': () => const SpacerSample(),
        'SizedBox': () => const SizedBoxSample(),
        'Placeholder': () => const PlaceholderSample(),
        'ConstrainedBox': () => const ConstrainedBoxSample(),
        'Drawer': () => const DrawerSample(),
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
        'AnimatedIcon': () => const AnimatedIconSample(),
        'AnimatedSwitcher': () => const AnimatedSwitcherSample(),
        'FadeTransition': () => const FadeTransitionSample(),
        'Transform': () => const TransformSample(),
        'CircularProgressIndicator': () =>
            const CircularProgressIndicatorSample(),
      }),
      WidgetGroup('ListView', {
        'ListTile': () => const ListTileSample(),
        'CheckboxListTile': () => const CheckboxListTileSample(),
        'RadioListTile': () => const RadioListTileSample(),
        'ListView.separated': () => const ListViewSeparatedSample(),
        'ListWheelScrollView': () => const ListWheelScrollViewSample(),
        'RefreshIndicator': () => const RefreshIndicatorSample(),
        'Dismissible': () => const DismissibleSample(),
      }),
      WidgetGroup('Image', {
        'Image': () => const ImageSample(),
        'Icon': () => const IconSample(),
        'FadeInImage': () => const FadeInImageSample(),
      }),
      WidgetGroup('Filter', {
        'BackdropFilter': () => const BackdropFilterSample(),
        'ColorFilter': () => const ColorFilterSample(),
      }),
      WidgetGroup('Bar', {
        'AppBar': () => const AppBarSample(),
        'CupertinoNavigationBar': () => const CupertinoNavigationBarSample(),
        'SliverAppBar': () => const SliverAppBarSample(),
      }),
      WidgetGroup('Data', {
        'MediaQuery': () => const MediaQuerySample(),
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
              CupertinoPageRoute(builder: (context) {
                var body = WidgetList(group: widgets[i]);
                if (body.group.data.length == 1) {
                  var name = body.group.data.keys.first;
                  var destination = body.group.data[name]!();
                  return Scaffold(
                      appBar: AppBar(title: Text(name)), body: destination);
                } else {
                  return Scaffold(
                      appBar: AppBar(title: Text(widgets[i].name)), body: body);
                }
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
            CupertinoPageRoute(builder: (context) {
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
