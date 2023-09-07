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
      appBar: AppBar(
        backgroundColor: Colors.red[600],
        title: const Text('MyApp'),
      ),
      body: ListView(children: <Widget>[
        Container(
          // color: Colors.green,
          alignment: Alignment.center,
          padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("BERITA TERBARU", style: TextStyle(fontSize: 15)),
              Text("PERTANDINGAN HARI INI", style: TextStyle(fontSize: 15)),
            ],
          ),
        ),
        Stack(
          children: [
            Container(
              color: Colors.purple[400],
              padding: const EdgeInsets.only(top: 263.0, left: 8.0),
              height: 300.0,
              width: 400.0,
              margin:
                  const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0),
              child: const Text(
                "Transfer",
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w400),
              ),
            ),
            Container(
              color: Colors.white,
              alignment: Alignment.bottomCenter,
              padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
              height: 245.0,
              width: 400.0,
              margin:
                  const EdgeInsets.only(left: 13.0, right: 13.0, bottom: 25.0),
              child: const Text(
                "Costa Mendekat ke Palmerias",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              ),
            ),
            Container(
              height: 200.0,
              width: 400.0,
              margin:
                  const EdgeInsets.only(left: 13.0, right: 13.0, bottom: 60.0),
              child: Image.network(
                  'https://akcdn.detik.net.id/community/media/visual/2022/09/13/diego-costa-1.jpeg?w=700&q=90',
                  fit: BoxFit.fill),
            ),
          ],
        ),
        const SizedBox(
          height: 10.0,
          width: 10.0,
        ),
        Column(
          children: [
            Row(
              children: [
                Container(
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.grey)),
                  margin: const EdgeInsets.only(left: 10.0),
                  child: Image.network(
                    'https://akcdn.detik.net.id/community/media/visual/2022/09/13/diego-costa-1.jpeg?w=700&q=90',
                    height: 122.0,
                  ),
                ),
                Container(
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.grey)),
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(right: 10.0),
                  width: 187.8,
                  height: 124.0,
                  padding: EdgeInsets.only(left: 10.0),
                  child: Text(
                    "Pique bilang wasit untungkan madrid, koeman tepok jidat",
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
            Container(
              decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
              padding: const EdgeInsets.only(top: 15.0, left: 10.0),
              height: 50.0,
              width: 400.0,
              margin:
                  const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0),
              child: const Text(
                "Barcelona Feb 13, 2021",
                style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w400),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10.0,
          width: 10.0,
        ),
        Column(
          children: [
            Row(
              children: [
                Container(
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.grey)),
                  margin: const EdgeInsets.only(left: 10.0),
                  child: Image.network(
                    'https://akcdn.detik.net.id/community/media/visual/2022/09/13/diego-costa-1.jpeg?w=700&q=90',
                    height: 122.0,
                  ),
                ),
                Container(
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.grey)),
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(right: 10.0),
                  width: 187.8,
                  height: 124.0,
                  padding: EdgeInsets.only(left: 10.0),
                  child: Text(
                    "Pique bilang wasit untungkan madrid, koeman tepok jidat",
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
            Container(
              decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
              padding: const EdgeInsets.only(top: 15.0, left: 10.0),
              height: 50.0,
              width: 400.0,
              margin:
                  const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0),
              child: const Text(
                "Barcelona Feb 13, 2021",
                style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w400),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10.0,
          width: 10.0,
        ),
        Column(
          children: [
            Row(
              children: [
                Container(
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.grey)),
                  margin: const EdgeInsets.only(left: 10.0),
                  child: Image.network(
                    'https://akcdn.detik.net.id/community/media/visual/2022/09/13/diego-costa-1.jpeg?w=700&q=90',
                    height: 122.0,
                  ),
                ),
                Container(
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.grey)),
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(right: 10.0),
                  width: 187.8,
                  height: 124.0,
                  padding: EdgeInsets.only(left: 10.0),
                  child: Text(
                    "Pique bilang wasit untungkan madrid, koeman tepok jidat",
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
            Container(
              decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
              padding: const EdgeInsets.only(top: 15.0, left: 10.0),
              height: 50.0,
              width: 400.0,
              margin:
                  const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0),
              child: const Text(
                "Barcelona Feb 13, 2021",
                style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w400),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10.0,
          width: 10.0,
        ),
        Column(
          children: [
            Row(
              children: [
                Container(
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.grey)),
                  margin: const EdgeInsets.only(left: 10.0),
                  child: Image.network(
                    'https://akcdn.detik.net.id/community/media/visual/2022/09/13/diego-costa-1.jpeg?w=700&q=90',
                    height: 122.0,
                  ),
                ),
                Container(
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.grey)),
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(right: 10.0),
                  width: 187.8,
                  height: 124.0,
                  padding: EdgeInsets.only(left: 10.0),
                  child: Text(
                    "Pique bilang wasit untungkan madrid, koeman tepok jidat",
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
            Container(
              decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
              padding: const EdgeInsets.only(top: 15.0, left: 10.0),
              height: 50.0,
              width: 400.0,
              margin:
                  const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0),
              child: const Text(
                "Barcelona Feb 13, 2021",
                style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w400),
              ),
            ),
          ],
        ),
      ]),
    ));
  }
}
