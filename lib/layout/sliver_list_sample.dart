import 'package:flutter/material.dart';

class SliverListSample extends StatelessWidget {
  const SliverListSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var sliver1 = List.generate(
        20,
        (i) => Container(
            margin: const EdgeInsets.all(8),
            child: Text("sliver-A $i", textScaleFactor: 3)));
    return CustomScrollView(slivers: [
      SliverPersistentHeader(
          pinned: true,
          floating: true,
          delegate:
              SliverHeader(child: const Text("HEADER", textScaleFactor: 4))),
      SliverList(
        delegate: SliverChildListDelegate(sliver1),
      ),
    ]);
  }
}

class SliverHeader extends SliverPersistentHeaderDelegate {
  SliverHeader({required this.child});

  final Widget child;

  @override
  double get minExtent => 100;

  @override
  double get maxExtent => 100;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(color: Colors.white, child: child);
  }

  @override
  bool shouldRebuild(SliverHeader oldDelegate) {
    return true;
  }
}
