class Item {
  late int? id;
  late String _name;
  late int _price;

  get idku => id;

  String get name => _name;
  set name(String value) => _name = value;
  get price => _price;
  set price(value) => _price = value;

  // konstruktor versi 1
  Item(this._name, this._price);

  // konstruktor versi 2: konversi dari Map ke Item
  Item.fromMap(Map<String, dynamic> map) {
    // this.id = map['id'];
    _name = map['name'];
    _price = map['price'];
  }

  // konversi dari Item ke Map
  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = Map<String, dynamic>();
    // map['id'] = this.id;
    map['name'] = name;
    map['price'] = price;
    return map;
  }
}
