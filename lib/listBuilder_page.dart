// ignore_for_file: file_names

import 'package:first_project/Custom_Components/customAppBar.dart';
import 'package:first_project/home.dart';
import 'package:first_project/music.dart';
import 'package:first_project/setting.dart';
import 'package:flutter/material.dart';

class ListbuilderPage extends StatelessWidget {
  const ListbuilderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: "List Builder"),
      body: Center(
        child: ListView(
          children: [
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
                    MaterialPageRoute(builder: (context) => const Music()));
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
          ],
        ),
      ),
    );
  }
}
