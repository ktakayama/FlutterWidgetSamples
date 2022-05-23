import 'package:flutter/material.dart';

class ColorFilterSample extends StatelessWidget {
  const ColorFilterSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var image = Image.network(
      'https://via.placeholder.com/150.png/69f/fff',
    );
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Base image', textScaleFactor: 1.5),
          image,
          const Text('BlendMode.modulate', textScaleFactor: 1.5),
          ColorFiltered(
            colorFilter: const ColorFilter.mode(
              Colors.red,
              BlendMode.modulate,
            ),
            child: image,
          ),
          const Text('BlendMode.overlay', textScaleFactor: 1.5),
          ColorFiltered(
            colorFilter: const ColorFilter.mode(
              Colors.red,
              BlendMode.overlay,
            ),
            child: image,
          ),
          const Text('BlendMode.darken', textScaleFactor: 1.5),
          ColorFiltered(
            colorFilter: const ColorFilter.mode(
              Colors.red,
              BlendMode.darken,
            ),
            child: image,
          ),
          const Text('BlendMode.saturation with grey', textScaleFactor: 1.5),
          ColorFiltered(
            colorFilter: const ColorFilter.mode(
              Colors.grey,
              BlendMode.saturation,
            ),
            child: image,
          ),
        ],
      ),
    );
  }
}
