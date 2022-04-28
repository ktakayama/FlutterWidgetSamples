import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class FadeInImageSample extends StatelessWidget {
  const FadeInImageSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(spacing: 20, children: [
      FadeInImage.memoryNetwork(
        height: 200,
        width: 200,
        placeholder: kTransparentImage,
        image: 'https://via.placeholder.com/200.png/69f/fff',
      ),
      FadeInImage.assetNetwork(
        height: 200,
        width: 200,
        placeholder: 'localFile.png',
        image: 'https://via.placeholder.com/200.png/99f/fff',
      ),
    ]);
  }
}
