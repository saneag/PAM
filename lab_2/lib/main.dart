import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'form-page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'First Lab',
      theme: ThemeData(
        primarySwatch: Colors.orange,
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

