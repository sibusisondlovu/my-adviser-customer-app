import 'package:flutter/material.dart';

import 'splash_screen.dart';

void main() {
  runApp(MyAdvisrApp());
}

class MyAdvisrApp extends StatelessWidget {
  const MyAdvisrApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Adviser',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: SplashScreen(),
    );
  }
}
