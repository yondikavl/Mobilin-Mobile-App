import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(MobilinApp());
}

class MobilinApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mobilin',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        textTheme: Theme.of(context).textTheme.apply(
              bodyColor: Colors.black,
              displayColor: Colors.black,
            ),
      ),
      home: HomeScreen(),
    );
  }
}
