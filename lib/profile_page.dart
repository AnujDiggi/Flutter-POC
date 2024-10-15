import 'package:first_project/Custom_Components/customAppBar.dart';
import 'package:first_project/Custom_Components/customeDrawer.dart';
import 'package:first_project/Navigation_bar/navigation_menu.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  ProfilePageState createState() => ProfilePageState();
}

class ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: "Profile"),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(10),
          child: const Text("Comming Soon...."),
        ),
      ),
      drawer: const CustomDrawer(),
      bottomNavigationBar: const NavigationMenu(currentIndex: 0),
    );
  }
}
