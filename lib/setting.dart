import 'package:first_project/Custom_Components/customAppBar.dart';
import 'package:first_project/Navigation_bar/navigation_menu.dart';
import 'package:flutter/material.dart';

class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
      return const Scaffold(
        appBar: CustomAppBar(title: "Settings"),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.settings,
                size: 30,
                color: Colors.deepOrangeAccent,
                ),
              ),
              Text("Welcome to Setting Page"),
            ],
          ),
        ),
        bottomNavigationBar:  NavigationMenu(currentIndex: 3),
      );
  }
}