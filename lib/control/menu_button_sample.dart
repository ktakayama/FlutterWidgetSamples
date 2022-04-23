import 'package:flutter/material.dart';

class MenuButtonSample extends StatefulWidget {
  const MenuButtonSample({Key? key}) : super(key: key);

  @override
  State<MenuButtonSample> createState() => _MenuButtonSampleState();
}

class _MenuButtonSampleState extends State<MenuButtonSample> {
  var _message = 'state';
  var _dropdownValue = 'value1';

  void _updateMessage(String msg) {
    setState(() {
      _message = msg;
    });
  }

  void _updateDropdown(String msg) {
    setState(() {
      _message = msg;
      _dropdownValue = msg;
    });
  }

  @override
  Widget build(BuildContext context) {
    var items = [
      Text(
        _message,
        style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
      ),
      const Text(
        'PopupMenuButton',
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
      PopupMenuButton(
        onSelected: (value) => _updateMessage('menuSelect: $value'),
        itemBuilder: (context) => const [
          PopupMenuItem(value: 1, child: Text('menu1')),
          PopupMenuItem(value: 2, child: Text('menu2')),
          PopupMenuItem(value: 3, child: Text('menu3')),
        ],
      ),
      PopupMenuButton(
        icon: const Icon(Icons.man),
        onSelected: (value) => _updateMessage('menuSelect Icon: $value'),
        itemBuilder: (context) => const [
          PopupMenuItem(value: 1, child: Text('icon menu1')),
          PopupMenuItem(value: 2, child: Text('icon menu2')),
        ],
      ),
      DropdownButton(
          value: _dropdownValue,
          items: const [
            DropdownMenuItem(value: 'value1', child: Text('menu1')),
            DropdownMenuItem(value: 'value2', child: Text('menu2')),
            DropdownMenuItem(value: 'value3', child: Text('menu3')),
          ],
          onChanged: (value) => _updateDropdown('$value')),
    ];

    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: items
            .map((e) => Padding(padding: const EdgeInsets.all(16), child: e))
            .toList(),
      ),
    );
  }
}
