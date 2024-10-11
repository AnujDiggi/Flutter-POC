import 'package:first_project/login_page.dart';
import 'package:first_project/main.dart';
import 'package:flutter/material.dart';

class ColumnRows extends StatelessWidget {
  const ColumnRows({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "First App",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.black,
            letterSpacing: 1.5,
          ),
        ),
        backgroundColor: Colors.green,
      ),
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
