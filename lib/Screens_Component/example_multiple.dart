import 'package:first_project/Custom_Components/customAppBar.dart';
import 'package:first_project/Navigation_bar/navigation_menu.dart';
//import 'package:first_project/Provider_Packages/example_multipleprovider.dart';
import 'package:flutter/material.dart';
//import 'package:provider/provider.dart';

class ExampleMultiple extends StatefulWidget {
  const ExampleMultiple({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ExampleMultipleState createState() => _ExampleMultipleState();
}

class _ExampleMultipleState extends State<ExampleMultiple> {
  double value = 1.0;

  @override
  Widget build(BuildContext context) {
    //final provider = Provider.of<ExampleMultipleprovider>(context);
    return Scaffold(
      appBar: const CustomAppBar(title: "Multiple Provider"),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Slider(
                min: 0,
                max: 1,
                value: value,
                onChanged: (val) {
                  value = val;
                  setState(() {});
                }),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                    child: Text(
                  "Text 1",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold, backgroundColor: Colors.orange),
                ),
                ),
                Expanded(
                    child: Text(
                  "Text 2",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold, backgroundColor: Colors.green),
                ))
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: const NavigationMenu(currentIndex: 1),
    );
  }
}
