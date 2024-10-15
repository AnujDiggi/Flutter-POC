import 'package:first_project/Custom_Components/customAppBar.dart';
import 'package:flutter/material.dart';

class StackPage extends StatelessWidget {
  const StackPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: "Stack"),
      body: Center(
        child: Stack(
          fit: StackFit.passthrough,
          clipBehavior: Clip.none,
          children: [
            Container(
              height: 300,
              width: 400,
              color: Colors.blue,
              child: const Center(
                child: Text(
                  "Top Weidgets",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
            Positioned(
                top: 30,
                right: 20,
                child: Container(
                  height: 100,
                  width: 150,
                  color: Colors.green,
                  child: const Center(
                    child: Text(
                      "Middle",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                )),
            Positioned(
                top: 30,
                left: 20,
                child: Container(
                  height: 100,
                  width: 150,
                  color: Colors.orange,
                  child: const Center(
                    child: Text(
                      "Bottom",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
