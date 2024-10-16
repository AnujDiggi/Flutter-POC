// ignore_for_file: library_private_types_in_public_api

import 'package:first_project/Custom_Components/customAppBar.dart';
import 'package:first_project/Provider_Packages/count_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CountExample extends StatefulWidget {
  const CountExample({super.key});

  @override
  _CountExampleState createState() => _CountExampleState();
}

class _CountExampleState extends State<CountExample> {
  @override
  Widget build(BuildContext context) {
    final countProvider = Provider.of<CountProvider>(context, listen: false);
    print("widget");
    return Scaffold(
      appBar: const CustomAppBar(title: "Count Provider"),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Count using Change Notifier"),
            const SizedBox(
              height: 20,
            ),
            Consumer<CountProvider>(builder: (context, value, child) {
              return Text(value.count.toString(),
                  style: const TextStyle(fontSize: 30));
            })
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //print("Only run on This part");
          countProvider.setCount();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
