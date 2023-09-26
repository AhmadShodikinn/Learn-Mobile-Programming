import 'package:flutter/material.dart';
import 'package:navigate_route/models/item.dart';

class ItemPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Item? itemArgs = ModalRoute.of(context)?.settings.arguments as Item?;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Halaman Produk'),
      ),
      body: Center(
        // child: Text('Price: ${itemArgs?.price ?? ''}'),
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.all(10.0),
              margin: const EdgeInsets.only(left: 13.0, right: 13.0),
              child: Image.network(
                itemArgs?.link ?? '',
                fit: BoxFit.fill,
              ),
            ),
            Container(
              width: 10,
              height: 50,
              padding: EdgeInsets.all(10.0),
              margin: const EdgeInsets.only(left: 13.0, right: 13.0),
              child: Text(itemArgs?.name ?? '',
                  style:
                      TextStyle(fontSize: 20.0, fontWeight: FontWeight.w400)),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              margin: const EdgeInsets.only(left: 13.0, right: 13.0),
              child: Text('Price: ${itemArgs?.price ?? ''}',
                  style: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.w700,
                      color: Colors.blue[700])),
            ),
            Container(
              width: 150,
              height: 50,
              margin: const EdgeInsets.only(left: 15.0, right: 15.0),
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Beli Sekarang',
                  style: TextStyle(fontSize: 22),
                ),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12), // <-- Radius
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
