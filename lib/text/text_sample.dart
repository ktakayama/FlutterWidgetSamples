import 'package:flutter/material.dart';

class TextSample extends StatelessWidget {
  const TextSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var text = const [
      Text('basic'),
      Text('FontSize.24', style: TextStyle(fontSize: 24)),
      Text('TextAlign.end', textAlign: TextAlign.end),
      Text('FontStyle.italic', style: TextStyle(fontStyle: FontStyle.italic)),
      Text('FontWeight.w100', style: TextStyle(fontWeight: FontWeight.w100)),
      Text('FontWeight.w100', style: TextStyle(fontWeight: FontWeight.w100)),
      Text('FontWeight.w200', style: TextStyle(fontWeight: FontWeight.w200)),
      Text('FontWeight.w300', style: TextStyle(fontWeight: FontWeight.w300)),
      Text('FontWeight.w400', style: TextStyle(fontWeight: FontWeight.w400)),
      Text('FontWeight.w500', style: TextStyle(fontWeight: FontWeight.w500)),
      Text('FontWeight.w600', style: TextStyle(fontWeight: FontWeight.w600)),
      Text('FontWeight.w700', style: TextStyle(fontWeight: FontWeight.w700)),
      Text('FontWeight.w800', style: TextStyle(fontWeight: FontWeight.w800)),
      Text('FontWeight.w900', style: TextStyle(fontWeight: FontWeight.w900)),
      Text('FontWeight.bold', style: TextStyle(fontWeight: FontWeight.bold)),
      Text('Colors.red', style: TextStyle(color: Colors.red)),
      Text('BackgroundColor.red',
          style: TextStyle(backgroundColor: Colors.red)),
      Text('LetterSpacing.10', style: TextStyle(letterSpacing: 10)),
      Text('Word Spacing 10', style: TextStyle(wordSpacing: 10)),
      Text('TextDecoration.underline',
          style: TextStyle(decoration: TextDecoration.underline)),
      Text('TextDecoration.overline',
          style: TextStyle(decoration: TextDecoration.overline)),
      Text('TextDecoration.lineThrough',
          style: TextStyle(decoration: TextDecoration.lineThrough)),
      Text('TextDecoration.underline, DecorationColor.red',
          style: TextStyle(
              decoration: TextDecoration.underline,
              decorationColor: Colors.red)),
      Text('TextDecoration.underline, TextDecorationStyle.dotted',
          style: TextStyle(
              decoration: TextDecoration.underline,
              decorationStyle: TextDecorationStyle.dotted)),
      Text('Shadow',
          style: TextStyle(
              shadows: [Shadow(color: Colors.grey, offset: Offset(2, 2))])),
      Text('Multi Shadow',
          style: TextStyle(shadows: [
            Shadow(color: Colors.blue, offset: Offset(2, 2)),
            Shadow(color: Colors.red, offset: Offset(-2, -2))
          ])),
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
