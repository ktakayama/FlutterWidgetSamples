import 'package:flutter/material.dart';

class ToggleButtonsSample extends StatefulWidget {
  const ToggleButtonsSample({Key? key}) : super(key: key);

  @override
  State<ToggleButtonsSample> createState() => _ToggleButtonsSampleState();
}

class _ToggleButtonsSampleState extends State<ToggleButtonsSample> {
  final _isSelected = [false, false, false, false];

  void _updateSelect(int index) => setState(() {
        _isSelected[index] = !_isSelected[index];
      });

  @override
  Widget build(BuildContext context) {
    var items = [
      ToggleButtons(
        children: const [
          Icon(Icons.one_k),
          Icon(Icons.two_k),
          Icon(Icons.three_k),
          Icon(Icons.four_k),
        ],
        isSelected: _isSelected,
        onPressed: _updateSelect,
      ),
      ToggleButtons(
        children: const [
          Icon(Icons.one_k),
          Icon(Icons.two_k),
          Icon(Icons.three_k),
          Icon(Icons.four_k),
        ],
        color: Colors.red,
        selectedColor: Colors.green,
        fillColor: Colors.lightGreen.withOpacity(0.2),
        borderColor: Colors.lightBlueAccent,
        selectedBorderColor: Colors.lightGreenAccent,
        isSelected: _isSelected,
        onPressed: _updateSelect,
      ),
      ToggleButtons(
        children: const [
          Icon(Icons.one_k),
          Icon(Icons.two_k),
          Icon(Icons.three_k),
          Icon(Icons.four_k),
        ],
        isSelected: _isSelected,
      ),
      ToggleButtons(
        children: const [
          Icon(Icons.one_k),
          Icon(Icons.two_k),
          Icon(Icons.three_k),
          Icon(Icons.four_k),
        ],
        isSelected: _isSelected,
        disabledColor: Colors.black12,
      ),
      ToggleButtons(
        children: const [
          Icon(Icons.one_k),
          Icon(Icons.two_k),
          Icon(Icons.three_k),
          Icon(Icons.four_k),
        ],
        isSelected: _isSelected,
        direction: Axis.vertical,
        onPressed: _updateSelect,
      ),
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
