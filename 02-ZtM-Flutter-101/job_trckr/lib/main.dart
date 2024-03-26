import 'package:flutter/material.dart';
import 'package:job_trckr/pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Job Tracker v2',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromRGBO(151,208,119,0)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Job Tracker'),
    );
  }
}

