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
      home: Scaffold(
          appBar: AppBar(title: Text("Contoh Configuration")),
          body: Container(
              decoration: BoxDecoration(
                color: const Color(0xff7c94b6),

                //online image
                // image: const DecorationImage(
                //   image: NetworkImage(
                //       'https://pixnio.com/free-images/2018/12/02/2018-12-02-19-17-12.jpg'),
                //   fit: BoxFit.fitWidth,
                // ),

                //offline dir for images
                image: const DecorationImage(
                  image: AssetImage('assets/lama.jpg'),
                  fit: BoxFit.fitWidth,
                ),
                border: Border.all(
                  color: Colors.black,
                  width: 8,
                ),
                borderRadius: BorderRadius.circular(12),
              ),
              height: 200,
              width: 300,
              margin: EdgeInsets.all(20))),
    );
  }
}
