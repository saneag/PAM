import 'dart:math';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'First Lab',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        backgroundColor: Colors.black,
        textTheme: GoogleFonts.comfortaaTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Laboratorul 2 Garstea Alexandr'),
        ),
        body: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(),
            child: MyCustomForm(),
          )
        ),
      ),
    );
  }
}

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