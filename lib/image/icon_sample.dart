import 'package:flutter/material.dart';

class IconSample extends StatelessWidget {
  const IconSample({Key? key}) : super(key: key);

  Widget paddingRow(List<Widget> children) {
    return Row(
        children: children
            .map((e) => Padding(padding: const EdgeInsets.all(8), child: e))
            .toList());
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Column(
        children: [
          const Text("Basic", textScaleFactor: 2),
          Wrap(
            spacing: 20,
            children: const [
              Icon(Icons.hd),
              Icon(
                Icons.hd,
                size: 40,
              ),
              Icon(
                Icons.hd,
                size: 60,
              ),
              Icon(
                Icons.hd,
                color: Colors.cyan,
                size: 80,
              ),
              Icon(
                Icons.hd,
                color: Colors.red,
                size: 80,
              ),
            ],
          ),
          const Divider(),
          const Text("TextDirection", textScaleFactor: 2),
          const Divider(),
          paddingRow(const [
            Icon(
              Icons.navigate_before,
              size: 40,
              textDirection: TextDirection.ltr,
            ),
            Icon(
              Icons.navigate_before,
              size: 40,
              textDirection: TextDirection.rtl,
            ),
            Text("navigate_before", textScaleFactor: 1.5)
          ]),
          const Divider(),
          paddingRow(const [
            Icon(
              Icons.navigate_next,
              size: 40,
              textDirection: TextDirection.ltr,
            ),
            Icon(
              Icons.navigate_next,
              size: 40,
              textDirection: TextDirection.rtl,
            ),
            Text("navigate_next", textScaleFactor: 1.5)
          ]),
          const Divider(),
          paddingRow(const [
            Icon(
              Icons.label_important,
              size: 40,
              textDirection: TextDirection.ltr,
            ),
            Icon(
              Icons.label_important,
              size: 40,
              textDirection: TextDirection.rtl,
            ),
            Text("label_important", textScaleFactor: 1.5)
          ]),
          const Divider(),
          paddingRow(const [
            Icon(
              Icons.trending_up,
              size: 40,
              textDirection: TextDirection.ltr,
            ),
            Icon(
              Icons.trending_up,
              size: 40,
              textDirection: TextDirection.rtl,
            ),
            Text("trending_up", textScaleFactor: 1.5)
          ]),
        ],
      ),
    );
  }
}
