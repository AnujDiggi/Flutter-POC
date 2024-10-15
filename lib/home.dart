import 'package:first_project/Custom_Components/customAppBar.dart';
import 'package:first_project/Custom_Components/customeDrawer.dart';
import 'package:first_project/Navigation_bar/navigation_menu.dart';
import 'package:first_project/music.dart';
import 'package:first_project/shopping.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Home'),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              width: 300,
              height: 300,
              //padding: const EdgeInsets.all(10),
              child: Image(image: AssetImage("assets/welcome.jpg")),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
              child: const Text(
                "Welcome To Ecommerce-site",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),

            // creating Container for makig buttons in column

            Container(
              margin: const EdgeInsets.fromLTRB(90, 20, 90, 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blue
                          .shade100, // background color for each button container
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Music",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(width: 10),
                        IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Music()));
                          },
                          style: IconButton.styleFrom(
                              backgroundColor: Colors.grey),
                          icon: const Icon(
                            Icons.music_note,
                            color: Colors.white,
                          ),
                          iconSize: 30,
                        )
                      ],
                    ),
                  ),

                  // Giving space between both buttons
                  const SizedBox(height: 20),

                  // Second Button Container

                  Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 31, 122,
                          134), // Background color for the Music row
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Shopping",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(width: 10),
                        IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Shopping()));
                          },
                          style: IconButton.styleFrom(
                              backgroundColor: Colors.grey),
                          icon: const Icon(
                            Icons.shopping_bag,
                            color: Colors.white,
                          ),
                          iconSize: 30,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      backgroundColor: const Color.fromRGBO(213, 245, 227, 0.8),
      bottomNavigationBar: const NavigationMenu(
        currentIndex: 0,
      ),
      drawer: const CustomDrawer(),
    );
  }
}
