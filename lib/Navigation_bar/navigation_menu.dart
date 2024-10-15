// 15th September 2024

// Bottom Navigation Bar

import 'package:first_project/main.dart';
import 'package:first_project/music.dart';
import 'package:first_project/setting.dart';
import 'package:first_project/shopping.dart';
import 'package:flutter/material.dart';

class NavigationMenu extends StatefulWidget {
  final int currentIndex;

  const NavigationMenu({super.key, required this.currentIndex});

  @override
  NavigationMenuState createState() => NavigationMenuState();
}

class NavigationMenuState extends State<NavigationMenu> {
  void onItemtappeed(int index) {
    switch (index) {
      case 0:
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => const Welcome()));
        break;

      case 1:
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => const Shopping()));
        break;

      case 2:
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => const Music()));
        break;

      case 3:
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => const Setting()));
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
        height: 80,
        elevation: 0,
        selectedIndex: widget.currentIndex,
        onDestinationSelected: onItemtappeed,
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home, color: Colors.blue,), label: 'Home',),
          NavigationDestination(icon: Icon(Icons.shop, color: Colors.green,), label: 'Shopping',),
          NavigationDestination(icon: Icon(Icons.music_note, color: Colors.orange,), label: 'Music',),
          NavigationDestination(icon: Icon(Icons.settings, color: Colors.indigo,), label: 'Setting',),
        ]);
  }
}
