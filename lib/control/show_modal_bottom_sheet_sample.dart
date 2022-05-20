import 'package:flutter/material.dart';

class ShowModalBottomSheetSample extends StatelessWidget {
  const ShowModalBottomSheetSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        OutlinedButton(
            onPressed: () {
              showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return Container(
                        padding: const EdgeInsets.all(12),
                        height: 200,
                        child: const Text('OK'));
                  });
            },
            child: const Text('Simple')),
        OutlinedButton(
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (context) {
                  return const Center(
                    child: Text('scroll down to close'),
                  );
                },
                backgroundColor: Colors.red,
              );
            },
            child: const Text('BackgoundColor')),
        OutlinedButton(
            onPressed: () {
              showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return SizedBox(
                      height: 300,
                      child: Center(
                          child: ElevatedButton(
                        child: const Text('Close'),
                        onPressed: () => Navigator.pop(context),
                      )),
                    );
                  });
            },
            child: const Text('With close button')),
      ]
          .map((e) => Padding(padding: const EdgeInsets.all(12), child: e))
          .toList(),
    );
  }
}
