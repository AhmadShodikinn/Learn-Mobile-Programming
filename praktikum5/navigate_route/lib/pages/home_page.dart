import 'package:flutter/material.dart';
import 'package:navigate_route/models/item.dart';

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(
        name: 'Gula Pasir Rose Brand 1kg',
        price: 5000,
        link:
            'https://www.static-src.com/wcsstore/Indraprastha/images/catalog/full/MTA-10273749/rose_brand_rose_brand_tebu_gula_pasir_-1_kg-_full03_d7l8ellu.jpeg'),
    Item(
        name: 'Garam cap kapal 500gr',
        price: 2000,
        link:
            'https://www.static-src.com/wcsstore/Indraprastha/images/catalog/full//94/MTA-50563821/no-brand_no-brand_full01.jpg')
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text('Shooping List'),
        ),
        body: Container(
          margin: EdgeInsets.all(8),
          child: ListView.builder(
              padding: EdgeInsets.all(8),
              itemCount: items.length,
              itemBuilder: (context, index) {
                final item = items[index];
                return InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/item', arguments: item);
                  },
                  child: Card(
                      child: Container(
                    margin: EdgeInsets.all(15),
                    child: Row(children: [
                      Image.network(item.link, width: 100, height: 100),
                      Expanded(child: Text(item.name)),
                      Expanded(
                        child: Text(
                          item.price.toString(),
                          textAlign: TextAlign.end,
                        ),
                      ),
                    ]),
                  )),
                );
              }),
        ));

    // throw UnimplementedError();
  }
}
