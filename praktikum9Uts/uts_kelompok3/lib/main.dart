import 'package:flutter/material.dart';
import 'package:uts_kelompok3/pages/layout_navbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter dashboard',
      home: Scaffold(
        body: LayoutNavigationBar(),
      ),
    );
  }
}
