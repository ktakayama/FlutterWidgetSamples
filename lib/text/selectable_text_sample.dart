import 'package:flutter/material.dart';

class SelectableTextSample extends StatelessWidget {
  const SelectableTextSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var text = const [
      SelectableText('basic'),
      SelectableText('scale 2', textScaleFactor: 2),
      SelectableText.rich(
        TextSpan(
          style: TextStyle(color: Colors.black, fontSize: 24),
          children: [
            TextSpan(text: 'default '),
            TextSpan(
                text: ' labeled ',
                style: TextStyle(backgroundColor: Colors.yellow)),
            TextSpan(text: ' default'),
          ],
        ),
      ),
    ];
    return SafeArea(
      maintainBottomViewPadding: true,
      child: ListView.separated(
        separatorBuilder: (BuildContext context, int index) => const Divider(),
        itemCount: text.length,
        itemBuilder: (context, i) => ListTile(
          title: text[i],
        ),
      ),
    );
  }
}
