import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Contoh ListView Widget"),
        ),
        body: ListView(
          children: <Widget>[
            Container(
              color: Colors.green,
              alignment: Alignment.topLeft,
              child: Text(
                  "ListView widget digunanakan untuk menampilkandata dalam bentuk list dan jika datanya melebihi dari render box makahalaman tersebut dapat di scroll.",
                  style: TextStyle(fontSize: 30, color: Colors.white)),
            ),
            Container(
              color: Colors.red,
              alignment: Alignment.topLeft,
              child: Text(
                  "ListView widget digunanakan untuk menampilkandata dalam bentuk list dan jika datanya melebihi dari render box makahalaman tersebut dapat di scroll.",
                  style: TextStyle(fontSize: 30, color: Colors.white)),
              height: 400.0,
              width: 300.0,
            ),
            Container(
              color: Colors.deepPurple,
              alignment: Alignment.topLeft,
              child: Text(
                  "ListView widget digunanakan untuk menampilkandata dalam bentuk list dan jika datanya melebihi dari render box makahalaman tersebut dapat di scroll.",
                  style: TextStyle(fontSize: 30, color: Colors.white)),
              height: 200.0,
              width: 200.0,
            ),
          ],
        ),
      ),
    );
  }
}
