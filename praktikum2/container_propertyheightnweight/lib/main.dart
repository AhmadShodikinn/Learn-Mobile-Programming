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
          appBar: AppBar(title: Text("Contoh Height dan Width")),
          body: Container(
              margin: EdgeInsets.all(50),
              height: 200,
              width: 200,
              alignment: Alignment.center,
              color: Colors.blueGrey,
              child: Text(
                'Semangat Belajar',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ))),
    );
  }
}
