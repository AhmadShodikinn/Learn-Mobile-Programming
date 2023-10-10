class Item {
  int? id;
  String? _name;
  int? _price;
  String? _type;

  get idku => id;

  String get name => _name ?? '';
  set name(String value) => _name = value;
  get price => _price;
  set price(value) => _price = value;
  get type => _type;
  set type(value) => _type = value;

  // konstruktor versi 1
  Item(this._name, this._price);

  // konstruktor versi 2: konversi dari Map ke Item
  Item.fromMap(Map<String, dynamic> map) {
    id = map['id'];
    _name = map['name'];
    _price = map['price'];
    _type = map['type'];
  }

  // konversi dari Item ke Map
  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['price'] = price;
    map['type'] = type;
    return map;
  }
}
