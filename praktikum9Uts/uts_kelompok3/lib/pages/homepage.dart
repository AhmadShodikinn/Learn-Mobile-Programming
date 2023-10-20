import 'package:country_flags/country_flags.dart';
import 'package:flutter/material.dart';

class homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView(
          children: <Widget>[
            Card(
              margin: EdgeInsets.all(16.0),
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Icon(
                      Icons.group,
                      size: 72, // Adjust the size as needed
                      color: Colors.blue, // Change the icon color as desired
                    ),
                    SizedBox(
                        height:
                            16.0), // Add some spacing between the icon and text
                    Text(
                      "Total Responden",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ),

// another card
            SizedBox(
              height: 200,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Card(
                      margin: EdgeInsets.only(top: 16, left: 16, bottom: 16),
                      child: Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            Icon(
                              Icons.person,
                              size: 72,
                              color: Colors.blue,
                            ),
                            SizedBox(
                              height: 16.0,
                            ),
                            Text(
                              "Pria",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Card(
                      margin: EdgeInsets.only(top: 16, left: 16, bottom: 16),
                      child: Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            Icon(
                              Icons.pie_chart,
                              size: 80,
                              color: Colors.blue,
                            ),
                            SizedBox(
                              height: 16.0,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Card(
                      margin: EdgeInsets.only(
                          top: 16, left: 16, bottom: 16, right: 16),
                      child: Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            Icon(
                              Icons.person_2,
                              size: 72,
                              color: Colors.blue,
                            ),
                            SizedBox(
                              height: 16.0,
                            ),
                            Text(
                              "Wanita",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 16.0),
              child: SizedBox(
                height: 20,
                child: Text(
                  "Rata-rata responden",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 200,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Card(
                      margin: EdgeInsets.all(16.0),
                      child: Padding(
                        padding: EdgeInsets.all(30.0),
                        child: Column(
                          children: [
                            Text(
                              "Umur",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              "30",
                              style: TextStyle(
                                fontSize: 50,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              "Tahun",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Card(
                      margin: EdgeInsets.all(16.0),
                      child: Padding(
                        padding: EdgeInsets.all(30.0),
                        child: Column(
                          children: [
                            Text(
                              "Nilai",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              "3.9",
                              style: TextStyle(
                                fontSize: 50,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              "IPK",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // butuh halaman baru
            Padding(
              padding: EdgeInsets.only(left: 16.0, bottom: 16.0),
              child: SizedBox(
                height: 20,
                child: Text(
                  "Jumlah Responden Tiap Negara",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 16.0, right: 16.0),
              child: Card(
                color: Colors.white,
                elevation: 2.0,
                child: ListTile(
                  title: Text(
                    "11 Responden",
                    style: TextStyle(
                      fontSize: 20.0, // Adjust the font size as needed
                      fontWeight: FontWeight.w600, // Make the name bold
                    ),
                  ),
                  trailing: CountryFlag.fromCountryCode(
                    'ES',
                    height: 48,
                    width: 40,
                    borderRadius: 8,
                  ),
                ),
              ),
            ),

            //
            Padding(
              padding: EdgeInsets.all(16.0),
              child: SizedBox(
                height: 20,
                child: Text(
                  "Jumlah Faktor Permasalahan",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 16.0, right: 16.0),
              child: Card(
                color: Colors.white,
                elevation: 2.0,
                child: ListTile(
                  title: Text(
                    "Academic Support and Resources",
                    style: TextStyle(
                      fontSize: 20.0, // Adjust the font size as needed
                      fontWeight: FontWeight.w600, // Make the name bold
                    ),
                  ),
                  subtitle: Row(
                    children: [
                      // Add a gender icon (customize as needed)
                      Text('236 Responden')
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
