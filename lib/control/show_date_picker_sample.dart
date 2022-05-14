import 'package:flutter/material.dart';

class ShowDatePickerSample extends StatefulWidget {
  const ShowDatePickerSample({Key? key}) : super(key: key);

  @override
  State<ShowDatePickerSample> createState() => _ShowDatePickerSampleState();
}

class _ShowDatePickerSampleState extends State<ShowDatePickerSample> {
  String _result = '-';

  void _updateResult(value) {
    setState(() {
      _result = value.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('result: $_result'),
        OutlinedButton(
            onPressed: () {
              showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime.now().add(const Duration(days: -365)),
                lastDate: DateTime.now().add(const Duration(days: 365)),
              ).then(_updateResult);
            },
            child: const Text('DatePickerEntryMode.calendar')),
        OutlinedButton(
            onPressed: () {
              showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime.now().add(const Duration(days: -365)),
                lastDate: DateTime.now().add(const Duration(days: 365)),
                initialEntryMode: DatePickerEntryMode.input,
              ).then(_updateResult);
            },
            child: const Text('DatePickerEntryMode.input')),
        OutlinedButton(
            onPressed: () {
              showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime.now().add(const Duration(days: -365)),
                lastDate: DateTime.now().add(const Duration(days: 365)),
                helpText: 'Help sample',
                confirmText: 'Confirm sample',
              ).then(_updateResult);
            },
            child: const Text('customize text')),
      ]
          .map((e) => Padding(padding: const EdgeInsets.all(12), child: e))
          .toList(),
    );
  }
}
