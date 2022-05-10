import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FormSample extends StatefulWidget {
  const FormSample({Key? key}) : super(key: key);

  @override
  State<FormSample> createState() => _FormSampleState();
}

class _FormSampleState extends State<FormSample> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  var _dropdownValue = 'default';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(),
              TextFormField(
                initialValue: 'initialValue',
                style: const TextStyle(fontSize: 22),
              ),
              TextFormField(
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                  LengthLimitingTextInputFormatter(4),
                ],
                decoration: const InputDecoration(
                  hintText: '4 digits',
                ),
              ),
              TextFormField(
                decoration: const InputDecoration(
                  icon: Icon(Icons.pets),
                  hintText: 'hintText',
                ),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'TextFormField validation error';
                  }
                  return null;
                },
              ),
              DropdownButtonFormField(
                items: [
                  DropdownMenuItem(
                      child: Text('item1: ' + _dropdownValue), value: 'value1'),
                  DropdownMenuItem(
                      child: Text('item2: ' + _dropdownValue), value: 'value2'),
                  DropdownMenuItem(
                      child: Text('item3: ' + _dropdownValue), value: 'value3'),
                ],
                onChanged: (String? value) => {
                  setState(() {
                    _dropdownValue = value ?? '';
                  })
                },
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {}
                  },
                  child: const Text('Submit'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
