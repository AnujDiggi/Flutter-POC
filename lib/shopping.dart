import 'package:first_project/Custom_Components/customAppBar.dart';
import 'package:first_project/Custom_Components/customeDrawer.dart';
import 'package:first_project/Navigation_bar/navigation_menu.dart';
import 'package:first_project/Screens_Component/count_example.dart';
import 'package:first_project/listBuilder_page.dart';
import 'package:flutter/material.dart';

class Shopping extends StatefulWidget {
  const Shopping({super.key});

  @override
  ShoppingState createState() {
    return ShoppingState();
  }
}

class ShoppingState extends State<Shopping> {
  String name = "Anuj";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: "Shopping"),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(name),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  name = (name == "Anuj") ? "Anuj Kumar" : "Sameer";
                });
              },
              child: const Text("Click to Proceed"),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text("welcome to Drawer Page"),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ListbuilderPage()));
                },
                child: const Text("List Builder")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CountExample()));
                },
                child: const Text("Change Notifier")),
          ],
        ),
      ),
      drawer: const CustomDrawer(),
      bottomNavigationBar: const NavigationMenu(currentIndex: 1),
    );
  }
}
