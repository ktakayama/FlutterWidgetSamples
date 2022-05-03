import 'package:flutter/material.dart';

class RichTextSample extends StatelessWidget {
  const RichTextSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var text = [
      RichText(
        text: TextSpan(
          text: 'basic',
          style: DefaultTextStyle.of(context).style,
        ),
      ),
      RichText(
        text: const TextSpan(
          text: 'FontSize.24',
          style: TextStyle(color: Colors.black, fontSize: 24),
        ),
      ),
      RichText(
        text: TextSpan(
          style: DefaultTextStyle.of(context).style,
          children: const [
            TextSpan(
                text: 'underline',
                style: TextStyle(decoration: TextDecoration.underline)),
            TextSpan(text: ' red ', style: TextStyle(color: Colors.red)),
            TextSpan(text: 'blue', style: TextStyle(color: Colors.blue)),
          ],
        ),
      ),
      RichText(
        text: const TextSpan(
          style: TextStyle(color: Colors.black, fontSize: 24),
          children: [
            TextSpan(
              text: 'underline',
              style: TextStyle(decoration: TextDecoration.underline),
              children: [
                TextSpan(text: ' red ', style: TextStyle(color: Colors.red)),
                TextSpan(text: 'blue', style: TextStyle(color: Colors.blue)),
              ],
            ),
          ],
        ),
      ),
      RichText(
        text: const TextSpan(
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
