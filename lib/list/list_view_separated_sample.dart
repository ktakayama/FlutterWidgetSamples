import 'package:flutter/material.dart';

class ListViewSeparatedSample extends StatelessWidget {
  const ListViewSeparatedSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        separatorBuilder: (BuildContext context, int index) => const Divider(),
        padding: const EdgeInsets.all(16),
        itemCount: 50,
        itemBuilder: (_, i) => SizedBox(
              height: 44,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text("list $i"),
              ),
            ));
  }
}
