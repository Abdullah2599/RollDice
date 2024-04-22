import 'package:flutter/material.dart';
import 'main_class.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: MainApp(
          Color.fromARGB(255, 33, 150, 243),
          Color.fromARGB(255, 15, 4, 173),
        ),
      ),
    ),
  );
}
