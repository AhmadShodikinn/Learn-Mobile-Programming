import 'package:flutter/material.dart';
import 'package:uts_kelompok3/pages/homepage.dart';
import 'package:uts_kelompok3/pages/listpage.dart';
import 'package:uts_kelompok3/pages/newform.dart';

class LayoutNavigationBar extends StatefulWidget {
  @override
  _LayoutNavigationBarState createState() => _LayoutNavigationBarState();
}

class _LayoutNavigationBarState extends State<LayoutNavigationBar> {
  int _currentIndex = 1;
  final List<Widget> _children = [listpage(), homepage(), newform()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Dashboard'),
      ),
      body: _children[_currentIndex], // Display the selected page
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int index) {
          // Change the current page when an item is pressed
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'List',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.contact_page),
            label: 'Form Baru',
          ),
        ],
      ),
    );
  }
}
