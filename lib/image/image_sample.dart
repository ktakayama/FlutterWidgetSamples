import 'package:flutter/material.dart';

class ImageSample extends StatelessWidget {
  const ImageSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(spacing: 20, children: [
      const Image(
        height: 200,
        width: 200,
        image: NetworkImage('https://via.placeholder.com/200.png/69f/fff'),
      ),
      Image.network('https://via.placeholder.com/200.png/99f/fff'),
      Image.network('https://via.placeholder.com/200.png/966/fff',
          loadingBuilder: (context, child, progress) {
        var expectedTotalBytes = progress?.expectedTotalBytes;
        return progress == null
            ? child
            : LinearProgressIndicator(
                value: expectedTotalBytes != null
                    ? progress.cumulativeBytesLoaded / expectedTotalBytes
                    : null);
      }),
      Image(
        height: 180,
        width: 180,
        frameBuilder: (context, child, frame, wasSynchronouslyLoaded) {
          return Container(
              color: Colors.grey,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: child,
              ));
        },
        image:
            const NetworkImage('https://via.placeholder.com/180.png/63f/fff'),
      ),
    ]);
  }
}
