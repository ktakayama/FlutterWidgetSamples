import 'package:flutter/material.dart';

class ShowDateRangePickerSample extends StatefulWidget {
  const ShowDateRangePickerSample({Key? key}) : super(key: key);

  @override
  State<ShowDateRangePickerSample> createState() =>
      _ShowDateRangePickerSampleState();
}

class _ShowDateRangePickerSampleState extends State<ShowDateRangePickerSample> {
  String _result = '-';

  void _updateResult(value) {
    setState(() {
      _result = "\n" + value.start.toString() + "\n" + value.end.toString();
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
              showDateRangePicker(
                context: context,
                firstDate: DateTime.now().add(const Duration(days: -365)),
                lastDate: DateTime.now().add(const Duration(days: 365)),
              ).then(_updateResult);
            },
            child: const Text('DatePickerEntryMode.calendar')),
        OutlinedButton(
            onPressed: () {
              showDateRangePicker(
                context: context,
                firstDate: DateTime.now().add(const Duration(days: -365)),
                lastDate: DateTime.now().add(const Duration(days: 365)),
                initialEntryMode: DatePickerEntryMode.input,
              ).then(_updateResult);
            },
            child: const Text('DatePickerEntryMode.input')),
        OutlinedButton(
            onPressed: () {
              showDateRangePicker(
                context: context,
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
