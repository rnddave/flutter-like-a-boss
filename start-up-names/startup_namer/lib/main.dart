import './random_words.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// #docregion MyApp
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // #docregion build
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Startup Names',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Startup Names'),
        ),
        body: const Center(
          child: RandomWords(),
        ),
      ),
    );
  }
  // #enddocregion build
}
// #enddocregion MyApp


