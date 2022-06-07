import 'package:flutter/material.dart';

class RefreshIndicatorSample extends StatelessWidget {
  const RefreshIndicatorSample({super.key});

  Future sample() async {
    debugPrint('refresh');
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      color: Colors.green,
      backgroundColor: Colors.black38,
      child: ListView.separated(
          separatorBuilder: (BuildContext context, int index) =>
              const Divider(),
          padding: const EdgeInsets.all(16),
          itemCount: 50,
          itemBuilder: (_, i) => SizedBox(
                height: 44,
                child: Text("list $i"),
              )),
      onRefresh: () => sample(),
    );
  }
}
