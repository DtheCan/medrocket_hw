import 'package:flutter/material.dart';
import 'package:medrocket_hw/HomePage/home_page.dart';
import 'package:medrocket_hw/LinkedPage/linked_page.dart';
import 'package:medrocket_hw/HelpPage/help_page.dart';

class NavigationMenu extends StatefulWidget {
  const NavigationMenu({super.key});

  @override
  State<NavigationMenu> createState() => _NavigationMenuState();
}

class _NavigationMenuState extends State<NavigationMenu> {
  final List<Widget> _screens = <Widget>[
    //Главный экран профиля
    HomePage(),
    LinkedPage(),
    HelpPage(),
  ];

  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.house), label: 'Главная'),
          BottomNavigationBarItem(
            icon: Icon(Icons.link_sharp),
            label: 'Сcылки',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.help_outline),
            label: 'Помощь',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        onTap: _onItemTapped,
      ),
    );
  }
}
