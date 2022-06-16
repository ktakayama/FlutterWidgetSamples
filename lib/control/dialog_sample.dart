import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';

class DialogSample extends StatefulWidget {
  const DialogSample({Key? key}) : super(key: key);

  @override
  State<DialogSample> createState() => _DialogSampleState();
}

class DialogGroup {
  String title;
  Function() action;
  DialogGroup(this.title, this.action);
}

class _DialogSampleState extends State<DialogSample> {
  var _message = 'state';

  void _updateMessage(String msg) {
    setState(() {
      _message = msg;
    });
  }

  @override
  Widget build(BuildContext context) {
    final fieldController = TextEditingController();
    var items = [
      DialogGroup(
        'Simple Alert Diaplog',
        () => showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: const Text('Alert title'),
              content: const Text('content'),
              actions: [
                TextButton(
                    onPressed: Navigator.of(context).pop,
                    child: const Text('action button'))
              ],
            );
          },
        ),
      ),
      DialogGroup(
        'Simple Alert Diaplog with input',
        () => showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: const Text('input here'),
              content: TextField(controller: fieldController),
              actions: [
                TextButton(
                    onPressed: () {
                      _updateMessage('input: ' + fieldController.text);
                      Navigator.of(context).pop();
                    },
                    child: const Text('OK'))
              ],
            );
          },
        ),
      ),
      DialogGroup(
        'Simple Alert Diaplog with multiple action',
        () => showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: const Text('multi action'),
              actions: [
                TextButton(
                    onPressed: Navigator.of(context).pop,
                    child: const Text('Cancel')),
                TextButton(
                    onPressed: Navigator.of(context).pop,
                    child: const Text('OK'))
              ],
            );
          },
        ),
      ),
      DialogGroup(
        'AboutDialog',
        () => PackageInfo.fromPlatform().then((packageInfo) {
          showAboutDialog(
            context: context,
            applicationName: packageInfo.appName,
            applicationVersion:
                'v${packageInfo.version}(${packageInfo.buildNumber})',
            applicationLegalese: 'Kyosuke Takayama',
          );
        }),
      ),
      DialogGroup(
        'CupertinoDialog',
        () => PackageInfo.fromPlatform().then((packageInfo) {
          showCupertinoDialog(
            context: context,
            builder: (context) {
              return CupertinoAlertDialog(
                title: const Text('Title'),
                content: const Text('Content'),
                actions: [
                  CupertinoDialogAction(
                    child: const Text('action'),
                    onPressed: () => Navigator.pop(context),
                  ),
                  CupertinoDialogAction(
                    isDestructiveAction: true,
                    child: const Text('destructive'),
                    onPressed: () => Navigator.pop(context),
                  ),
                ],
              );
            },
          );
        }),
      ),
    ];
    return Column(
      children: [
        SizedBox(child: Text(_message), height: 30),
        SizedBox(
          height: 500,
          child: ListView.separated(
              separatorBuilder: (BuildContext context, int index) =>
                  const Divider(),
              padding: const EdgeInsets.all(16),
              itemCount: items.length,
              itemBuilder: (_, i) => ListTile(
                    title: Text(items[i].title),
                    onTap: items[i].action,
                  )),
        ),
      ],
    );
  }
}
