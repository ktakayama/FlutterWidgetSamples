import 'package:flutter/material.dart';

class MediaQuerySample extends StatelessWidget {
  const MediaQuerySample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context);
    var items = [
      'devicePixelRatio: ${media.devicePixelRatio}',
      'textScaleFactor: ${media.textScaleFactor}',
      'platformBrightness: ${media.platformBrightness}',
      'alwaysUse24HourFormat: ${media.alwaysUse24HourFormat}',
      'highContrast: ${media.highContrast}',
      'orientation: ${media.orientation}',
      'displayFeatures: ${media.displayFeatures}',
    ];
    return ListView.separated(
      separatorBuilder: (BuildContext context, int index) => const Divider(),
      padding: const EdgeInsets.all(16),
      itemCount: items.length,
      itemBuilder: (_, i) => SizedBox(
        height: 44,
        child: Align(
          alignment: Alignment.centerLeft,
          child: Text(items[i], textScaleFactor: 1.2),
        ),
      ),
    );
  }
}
