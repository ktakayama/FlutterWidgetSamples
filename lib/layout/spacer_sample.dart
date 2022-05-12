import 'package:flutter/material.dart';

class SpacerSample extends StatelessWidget {
  const SpacerSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var style =
        TextStyle(backgroundColor: Colors.red.withAlpha(100), fontSize: 24);
    return Row(
      children: [
        Column(
          children: [
            Text('Begin', style: style),
            const Spacer(),
            Text('Middle', style: style),
            const Spacer(flex: 2),
            Text('End', style: style),
            const Spacer(),
          ],
        ),
        const VerticalDivider(),
        Column(
          children: [
            Text('Begin', style: style),
            const Spacer(),
            Text('Middle', style: style),
            const Spacer(flex: 3),
            Text('End', style: style),
            const Spacer(),
          ],
        ),
        const VerticalDivider(),
        Column(
          children: [
            Text('Begin', style: style),
            const Spacer(flex: 2),
            Text('Middle', style: style),
            const Spacer(flex: 2),
            Text('End', style: style),
            const Spacer(),
          ],
        ),
      ],
    );
  }
}
