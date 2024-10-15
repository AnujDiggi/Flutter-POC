import 'package:first_project/Custom_Components/customAppBar.dart';
import 'package:first_project/home.dart';
import 'package:first_project/login_page.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  SignupPageState createState() => SignupPageState();
}

class SignupPageState extends State<SignupPage> {
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: "Sign Up"),
      body: Form(
        key: formKey,
        child: Center(
          child: Container(
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.fromLTRB(0, 40, 0, 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                    "Register",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: TextFormField(
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        label: Text("User Name"),
                        hintText: "Enter Your Name"),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please Enter Your Name";
                      }
                      return null;
                    },
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: TextFormField(
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        label: Text("Email"),
                        hintText: "Enter Your Email"),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please Enter Your Email";
                      }
                      return null;
                    },
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: TextFormField(
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        label: Text("Password"),
                        hintText: "Password"),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Enter Password";
                      }
                      return null;
                    },
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    onPressed: () {
                      if (formKey.currentContext != null &&
                          formKey.currentState!.validate()) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Home()));
                      }
                    },
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                    child: const Text(
                      "Register",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    )),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Don't have an Account?"),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const LoginPage()));
                          },
                          child: const Text(
                            "Login",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ))
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
