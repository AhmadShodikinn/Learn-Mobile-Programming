import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var listItem = ["Celsius", "Fahrenheit", "Reamur", "Kelvin"];
  double _inputUser = 0;
  final inputController = TextEditingController();
  String _newValue = "Celsius"; // Set nilai default
  double _result = 0;

  void perhitunganSuhu() {
    setState(() {
      // Mengambil input dari TextFormField dan mengonversinya ke double
      _inputUser = double.tryParse(inputController.text) ?? 0;

      if (_newValue == "Celsius")
        _result = _inputUser;
      else if (_newValue == "Fahrenheit")
        _result = (9 / 5) * _inputUser + 32;
      else if (_newValue == "Reamur")
        _result = (4 / 5) * _inputUser;
      else if (_newValue == "Kelvin") _result = _inputUser + 273;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Konverter Suhu'),
        ),
        body: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              TextFormField(
                controller: inputController,
                keyboardType:
                    TextInputType.number, // Hanya tampilkan keyboard angka
              ),
              DropdownButton<String>(
                items: listItem.map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                value: _newValue,
                onChanged: (String? changeValue) {
                  setState(() {
                    _newValue = changeValue!;
                  });
                },
              ),
              Result(result: _result),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  perhitunganSuhu();
                },
                child: Text(
                  "Konversi Suhu",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Result extends StatelessWidget {
  const Result({
    Key? key,
    required this.result,
  }) : super(key: key);
  final double result;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20, bottom: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Hasil",
            style: TextStyle(fontSize: 20),
          ),
          Text(
            result.toStringAsFixed(2),
            style: TextStyle(fontSize: 30),
          )
        ],
      ),
    );
  }
}
