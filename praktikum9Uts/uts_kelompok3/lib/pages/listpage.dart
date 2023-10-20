import 'package:country_flags/country_flags.dart';
import 'package:flutter/material.dart';

class listpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: ListView(
        children: [
          Card(
            color: Colors.white,
            elevation: 2.0,
            child: ListTile(
              leading: ConstrainedBox(
                constraints: BoxConstraints(
                  minWidth: 44,
                  minHeight: 44,
                  maxWidth: 64,
                  maxHeight: 64,
                ),
                // child: Image.asset(profileImage, fit: BoxFit.cover),
              ),
              title: Text(
                "Jhon Doe",
                style: TextStyle(
                  fontSize: 20.0, // Adjust the font size as needed
                  fontWeight: FontWeight.w600, // Make the name bold
                ),
              ),
              subtitle: Row(
                children: [
                  // Add a gender icon (customize as needed)
                  Text('Male'), // Display the gender
                  Text(' | '), // Separatorcon (customize as needed)
                  Text('12 years'), // Display the age
                ],
              ),
              trailing: CountryFlag.fromCountryCode(
                'ES',
                height: 48,
                width: 40,
                borderRadius: 8,
              ),
              onTap: () async {},
            ),
          )
        ],
      ),
    ));
  }
}
