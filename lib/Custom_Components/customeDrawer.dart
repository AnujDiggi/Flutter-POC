// ignore_for_file: file_names

import 'package:first_project/home.dart';
import 'package:first_project/main.dart';
import 'package:first_project/profile_page.dart';
import 'package:first_project/setting.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: const EdgeInsets.all(0),
        children: [
          const UserAccountsDrawerHeader(
            accountName: Text("Anuj Kumar"),
            accountEmail: Text("anuj.muz0405@gmail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.blue,
              child: Text(
                "A",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text("Home"),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Home()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text("Profile"),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const ProfilePage()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text("Settings"),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Setting()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text("LogOut"),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Welcome()));
            },
          )
        ],
      ),
    );
  }
}
