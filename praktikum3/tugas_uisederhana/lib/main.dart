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
        backgroundColor: Colors.blue[600],
        title: const Text('Ghibah News'),
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
              color: Colors.blue[700],
              padding: const EdgeInsets.only(top: 263.0, left: 8.0),
              height: 300.0,
              width: 400.0,
              margin:
                  const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0),
              child: const Text(
                "Berita Aktor terbaru ",
                style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w400,
                    color: Colors.white),
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
                "Kevin hart debut di LA!",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              ),
            ),
            Container(
              height: 200.0,
              width: 400.0,
              margin:
                  const EdgeInsets.only(left: 13.0, right: 13.0, bottom: 60.0),
              child: Image.network(
                'https://images.paramount.tech/uri/mgid:arc:imageassetref:bet.com:1fbef58e-fe97-4218-99cd-135c2b0d55ad?quality=0.7&gen=ntrn&legacyStatusCode=true&format=webp&height=1800&width=3200&crop=true',
                fit: BoxFit.fill,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10.0,
          width: 10.0,
        ),

        //test use row and column for image and text NO RECOMENDED KANG!
        // Column(
        //   children: [
        //     Row(
        //       children: [
        //         Container(
        //           decoration:
        //               BoxDecoration(border: Border.all(color: Colors.grey)),
        //           margin: const EdgeInsets.only(left: 10.0),
        //           child: Image.network(
        //             'https://akcdn.detik.net.id/community/media/visual/2022/09/13/diego-costa-1.jpeg?w=700&q=90',
        //             height: 122.0,
        //             fit: BoxFit.fitHeight,
        //           ),
        //         ),
        //         Container(
        //           decoration:
        //               BoxDecoration(border: Border.all(color: Colors.grey)),
        //           alignment: Alignment.center,
        //           margin: const EdgeInsets.only(right: 10.0),
        //           width: 187.8,
        //           height: 124.0,
        //           padding: const EdgeInsets.only(left: 10.0),
        //           child: const Text(
        //             "Lionel Messi Terbaik di Dunia dan Sejarah Sepak Bola! ",
        //             style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
        //           ),
        //         ),
        //       ],
        //     ),
        //     Container(
        //       decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
        //       padding: const EdgeInsets.only(top: 15.0, left: 10.0),
        //       height: 50.0,
        //       width: 400.0,
        //       margin:
        //           const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0),
        //       child: const Text(
        //         "Barcelona Sep 09, 2023",
        //         style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w400),
        //       ),
        //     ),
        //   ],
        // ),
        // const SizedBox(
        //   height: 10.0,
        //   width: 10.0,
        // ),

        //test use stack for auto resize image
        Stack(
          children: [
            Container(
              decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
              padding: const EdgeInsets.only(top: 135.0, left: 8.0),
              height: 170.0,
              width: 400.0,
              margin:
                  const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0),
              child: const Text(
                "Amerika Serikat Sep 01, 2023",
                style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w400),
              ),
            ),
            Container(
              decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
              alignment: Alignment.bottomCenter,
              padding:
                  const EdgeInsets.only(top: 5.0, bottom: 40.0, left: 10.0),
              height: 122.0,
              width: 190.0,
              margin:
                  const EdgeInsets.only(left: 195.0, right: 10.0, bottom: 25.0),
              child: const Text(
                "Will smith bosan enjadi aktor, memilih sebagai kiper dilapangan?",
                style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
              ),
            ),
            Container(
              decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
              height: 122.0,
              width: 185.0,
              margin: const EdgeInsets.only(left: 10.0, bottom: 60.0),
              child: Image.network(
                'https://www.indiewire.com/wp-content/uploads/2023/02/Will-Smith-2.jpg?w=3000&h=1687&crop=1&resize=1200%2C675',
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10.0,
          width: 10.0,
        ),
        Stack(
          children: [
            Container(
              decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
              padding: const EdgeInsets.only(top: 135.0, left: 8.0),
              height: 170.0,
              width: 400.0,
              margin:
                  const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0),
              child: const Text(
                "Amerika Serikat Sep 10, 2023",
                style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w400),
              ),
            ),
            Container(
              decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
              alignment: Alignment.bottomCenter,
              padding:
                  const EdgeInsets.only(top: 5.0, bottom: 40.0, left: 10.0),
              height: 122.0,
              width: 190.0,
              margin:
                  const EdgeInsets.only(left: 195.0, right: 10.0, bottom: 25.0),
              child: const Text(
                "Bruno mars alih haluan dari musisi ke atlet! ",
                style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
              ),
            ),
            Container(
              decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
              height: 122.0,
              width: 185.0,
              margin: const EdgeInsets.only(left: 10.0, bottom: 60.0),
              child: Image.network(
                'https://media.matamata.com/thumbs/2023/06/20/96235-profil-bruno-mars-instagrambrunomars/745x489-img-96235-profil-bruno-mars-instagrambrunomars.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10.0,
          width: 10.0,
        ),
        Stack(
          children: [
            Container(
              decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
              padding: const EdgeInsets.only(top: 135.0, left: 8.0),
              height: 170.0,
              width: 400.0,
              margin:
                  const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0),
              child: const Text(
                "Los Angeles Sep 09, 2023",
                style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w400),
              ),
            ),
            Container(
              decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
              alignment: Alignment.bottomCenter,
              padding:
                  const EdgeInsets.only(top: 10.0, bottom: 30.0, left: 10.0),
              height: 122.0,
              width: 190.0,
              margin:
                  const EdgeInsets.only(left: 195.0, right: 10.0, bottom: 25.0),
              child: const Text(
                "Lelah menjadi pembunuh bayaran, keanu reeves alih profesi sebagai penjual takoyaki! ",
                style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
              ),
            ),
            Container(
              decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
              height: 122.0,
              width: 185.0,
              margin: const EdgeInsets.only(left: 10.0, bottom: 60.0),
              child: Image.network(
                'https://cdn0-production-images-kly.akamaized.net/kON-G7FBJWE1-nAuaKWnVxg3ZWE=/640x360/smart/filters:quality(75):strip_icc():format(webp)/kly-media-production/medias/3334742/original/074148000_1609130574-shutterstock_1681128748.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10.0,
          width: 10.0,
        ),
      ]),
    ));
  }
}
