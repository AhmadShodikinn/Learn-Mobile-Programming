import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: Text("Contoh Padding")),
          body: Container(
              padding: EdgeInsets.only(left: 20),
              margin: EdgeInsets.all(20),
              height: 200,
              width: 200,
              alignment: Alignment.topLeft,
              color: Colors.blueGrey,
              child: Text(
                'Ayo Belajar Flutter',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ))),
    );
  }
}
