import 'package:flutter/material.dart';
import 'models/item.dart';

class EntryForm extends StatefulWidget {
  final Item item;
  EntryForm(this.item);
  @override
  EntryFormState createState() => EntryFormState(this.item);
}

class EntryFormState extends State<EntryForm> {
  Item item;
  EntryFormState(this.item);
  TextEditingController nameController = TextEditingController();
  TextEditingController priceController = TextEditingController();
  TextEditingController typeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    nameController.text = item.name;
    priceController.text = item.price.toString();

    return Scaffold(
      appBar: AppBar(
        title: Text(item.id == null ? 'Tambah Item' : 'Edit Item'),
        leading: Icon(Icons.keyboard_arrow_left),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 15.0, left: 10.0, right: 10.0),
        child: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
              child: TextField(
                controller: nameController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: 'Nama Barang',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
                onChanged: (value) {},
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
              child: TextField(
                controller: priceController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Harga',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
                onChanged: (value) {},
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
              child: TextField(
                controller: typeController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: 'Jenis Barang',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
                onChanged: (value) {},
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
              child: Row(children: <Widget>[
                Expanded(
                  child: ElevatedButton(
                    child: Text(
                      'Simpan',
                      textScaleFactor: 1.5,
                    ),
                    onPressed: () {
                      item = Item(nameController.text,
                          int.tryParse(priceController.text) ?? 0);

                      item.name = nameController.text;
                      item.price = int.tryParse(priceController.text) ?? 0;
                      item.type = typeController.text;

                      Navigator.pop(context, item);
                    },
                  ),
                ),
                Container(width: 5.0),
                Expanded(
                  child: ElevatedButton(
                    child: const Text(
                      'Batal',
                      textScaleFactor: 1.5,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
