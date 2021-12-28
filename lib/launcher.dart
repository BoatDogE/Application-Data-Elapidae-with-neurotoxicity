import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:project/data.dart';
import 'home.dart';
import 'medic.dart';

class Launcher extends StatefulWidget {
  static const routeName = '/';

  @override
  State<StatefulWidget> createState() {
    return _LauncherState();
  }
}

class _LauncherState extends State<Launcher> {
  int _selectedIndex = 0;
  List<Widget> _pageWidget = <Widget>[
    Home(),
    FilterLocalListPage(),
    Profile(),
  ];

  List<BottomNavigationBarItem> _menuBar = <BottomNavigationBarItem>[
    BottomNavigationBarItem(
      backgroundColor: Colors.red[50],
      icon: Icon(
        FontAwesomeIcons.home,
      ),
      title: Text(
        'หน้าหลัก',
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
    BottomNavigationBarItem(
      icon: Icon(FontAwesomeIcons.book),
      title: Text(
        'ข้อมูลงู',
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
    BottomNavigationBarItem(
      icon: Icon(FontAwesomeIcons.ambulance),
      title: Text(
        'โรงพยาบาล',
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pageWidget.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: _menuBar,
        currentIndex: _selectedIndex,
        selectedItemColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    );
  }
}
