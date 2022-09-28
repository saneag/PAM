import 'dart:math';
import 'package:flutter/material.dart';

class MyCustomForm extends StatefulWidget {
  const MyCustomForm({super.key});

  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

class MyCustomFormState extends State<MyCustomForm> {
  final _formKey = GlobalKey<FormState>();

  var weight = 0.0;
  var height = 0.0;
  var bmi = '';

  @override
  Widget build(BuildContext context) {

    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(50, 100, 50, 0),
            child: TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter you weight';
                }
                return null;
              },
              onChanged: (value) {
                setState(() {
                  weight = double.parse(value);
                });
              },
              decoration: const InputDecoration(
                  hintText: 'Input weight'
              ),
              keyboardType: TextInputType.number,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(50, 10, 50, 0),
            child: TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter you height';
                }
                return null;
              },
              onChanged: (value) {
                setState(() {
                  height = double.parse(value);
                });
              },
              decoration: const InputDecoration(
                  hintText: 'Input height'
              ),
              keyboardType: TextInputType.number,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 40, 0, 10),
            child: Text(
                'BMI: $bmi'
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
            child: ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  setState(() {
                    bmi = (weight / pow((height / 100), 2)).toStringAsFixed(2);
                  });
                }
              },
              child: const Text('Submit'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(0.0),
            child: ElevatedButton(
              onPressed: () {
                _formKey.currentState?.reset();
                setState(() {
                  bmi = '';
                });
              },
              child: const Text('Reset'),
            ),
          ),
        ],
      ),
    );
  }
}