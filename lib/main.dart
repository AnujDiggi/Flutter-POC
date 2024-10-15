import 'package:first_project/Custom_Components/customAppBar.dart';
import 'package:first_project/login_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Ensure that this MaterialApp is wrapping the whole app
      debugShowCheckedModeBanner: false,
      title: 'First App',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const Welcome(), // Starting point
    );
  }
}

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Welcome Page'),
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                width: 400,
                height: 400,
                child: Image(image: AssetImage('assets/pic-1.jpg')),
              ),
              const SizedBox(height: 20),
              const Text(
                'Welcome to my Page',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.indigo,
                  borderRadius: BorderRadius.circular(10),
                ),
                margin: const EdgeInsets.fromLTRB(80, 0, 80, 0),
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Welcome",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20
                    ),
                    ),
                    const SizedBox(height: 20,),
                    IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const LoginPage()));
                        },
                        style: IconButton.styleFrom(
                            backgroundColor: Colors.deepOrange),
                        icon: const Icon(Icons.login)),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 227, 228, 228),
    );
  }
}
