import 'package:flutter/material.dart';
import 'package:flutter_internals/keys/key.dart';

void main() {
  ThemeData(useMaterial3: true);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Flutter Internal"),
        ),
        body: const Keys(),
      ),
    );
  }
}
