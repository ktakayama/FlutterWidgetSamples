import 'package:flutter/material.dart';

class ButtonSample extends StatelessWidget {
  const ButtonSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var items = [
      TextButton(onPressed: () => {}, child: const Text('TextButton')),
      OutlinedButton(onPressed: () => {}, child: const Text('OutlinedButton')),
      ElevatedButton(onPressed: () => {}, child: const Text('ElevatedButton')),
      IconButton(icon: const Icon(Icons.key), onPressed: () => {}),
      const Text(
        'TextButton',
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
      TextButton(
        child: const Text('OverlayColor'),
        onPressed: () => {},
        onLongPress: () => {},
        style: ButtonStyle(
          overlayColor: MaterialStateProperty.all(Colors.green),
        ),
      ),
      TextButton(
        child: const Text('Padding, Background Foregroung Color'),
        onPressed: () => {},
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all(Colors.green),
          padding: MaterialStateProperty.all(const EdgeInsets.all(20)),
          backgroundColor: MaterialStateProperty.all(Colors.black12),
        ),
      ),
      const Text(
        'OutlinedButton',
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
      OutlinedButton(
        child: const Text('BorderSide'),
        style: OutlinedButton.styleFrom(
          side: const BorderSide(width: 3, color: Colors.red),
        ),
        onPressed: () => {},
      ),
      OutlinedButton(
        child: const Text('StadiumBorder'),
        style: OutlinedButton.styleFrom(
          shape: const StadiumBorder(),
        ),
        onPressed: () => {},
      ),
      OutlinedButton(
        child: const Text('Circle'),
        style: OutlinedButton.styleFrom(
          shape: const CircleBorder(),
        ),
        onPressed: () => {},
      ),
      OutlinedButton.icon(
        label: const Text('OutlinedButton.icon'),
        icon: const Icon(Icons.star),
        onPressed: () => {},
      ),
      const Text(
        'ElevatedButton',
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
      ElevatedButton(
        child: const Text('Primary.red'),
        style: ElevatedButton.styleFrom(
          primary: Colors.red,
        ),
        onPressed: () => {},
      ),
      ElevatedButton(
        child: const Text('SahdowColor.red'),
        style: ElevatedButton.styleFrom(
          shadowColor: Colors.red,
        ),
        onPressed: () => {},
      ),
      ElevatedButton(
        child: const Text('StadiumBorder'),
        style: ElevatedButton.styleFrom(
          shape: const StadiumBorder(),
        ),
        onPressed: () => {},
      ),
      ElevatedButton(
        child:
            const Text('StadiumBorder', style: TextStyle(color: Colors.green)),
        style: ElevatedButton.styleFrom(
          primary: Colors.white,
          side: const BorderSide(color: Colors.green),
        ),
        onPressed: () => {},
      ),
      ElevatedButton.icon(
        label: const Text('ElevatedButton.icon'),
        icon: const Icon(Icons.bookmark),
        onPressed: () => {},
      ),
      const ElevatedButton(
        child: Text('null button'),
        onPressed: null,
      ),
    ];
    return SafeArea(
      child: ListView.separated(
          separatorBuilder: (BuildContext context, int index) =>
              const Divider(),
          padding: const EdgeInsets.all(16),
          itemCount: items.length,
          itemBuilder: (_, i) => items[i]),
    );
  }
}
