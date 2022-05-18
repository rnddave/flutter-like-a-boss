import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key : key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Star-up names',
      home: Scaffold(
        appBar : AppBar(
          title: const Text('Wlecome to the start-up namer'),

        ),
        body: const Center(
          child: Text('my message can go here'),
        ),
      ),
    );
  }
}