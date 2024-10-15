import 'package:first_project/Custom_Components/customAppBar.dart';
import 'package:first_project/Custom_Components/customeDrawer.dart';
import 'package:first_project/Navigation_bar/navigation_menu.dart';
import 'package:first_project/listBuilder_page.dart';
import 'package:flutter/material.dart';

class Shopping extends StatelessWidget {
  const Shopping({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: "Shopping"),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("welcome to Drawer Page"),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ListbuilderPage()));
                },
                child: const Text("List Builder"))
          ],
        ),
      ),
      drawer: const CustomDrawer(),
      bottomNavigationBar: const NavigationMenu(currentIndex: 1),
    );
  }
}
