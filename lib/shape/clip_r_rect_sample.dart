import 'package:flutter/material.dart';

class ClipRRectSample extends StatelessWidget {
  const ClipRRectSample({Key? key}) : super(key: key);

  Container _container(String text) {
    return Container(
      color: Colors.blue,
      width: 120,
      height: 120,
      child: Center(
        child: Text(text,
            style: const TextStyle(color: Colors.white, fontSize: 22)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Wrap(
        runSpacing: 20,
        spacing: 20,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: _container("circular 8"),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: _container("circular 12"),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(60),
            child: _container("circular 60"),
          ),
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
            child: _container("vertical"),
          ),
          ClipRRect(
            borderRadius: const BorderRadius.all(Radius.elliptical(60, 30)),
            child: _container("elliptical 1"),
          ),
          ClipRRect(
            borderRadius: const BorderRadius.all(Radius.elliptical(30, 60)),
            child: _container("elliptical 2"),
          ),
          ClipRRect(
            borderRadius:
                const BorderRadius.horizontal(left: Radius.circular(20)),
            child: _container("horizontal"),
          ),
          ClipOval(child: _container("ClipOval")),
        ],
      ),
    );
  }
}
