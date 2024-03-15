import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  final String? name;

  const FirstPage({super.key, this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Page'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('hello $name'),
          ],
        ),
      ),
    );
  }
}
