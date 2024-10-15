import 'package:first_project/Custom_Components/customAppBar.dart';
import 'package:first_project/home.dart';
import 'package:first_project/login_page.dart';
import 'package:flutter/material.dart';

class ColumnRows extends StatelessWidget {
  const ColumnRows({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Column Page'),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Home"),
            IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Home()));
                },
                style: IconButton.styleFrom(backgroundColor: Colors.orange),
                icon: const Icon(Icons.login))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const LoginPage()));
        },
        child: const Text(
          'Login Page',
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
