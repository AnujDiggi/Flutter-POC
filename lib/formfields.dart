import 'package:first_project/Custom_Components/customAppBar.dart';
import 'package:flutter/material.dart';

class Formfields extends StatefulWidget {
  const Formfields({Key? key}) : super(key: key);

  @override
  _FormfieldsState createState() => _FormfieldsState();
}

class _FormfieldsState extends State<Formfields> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Checkbox and Dropdown'),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Welcome to Checkbox",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
          ],
        ),
      ),
    );
  }
}
