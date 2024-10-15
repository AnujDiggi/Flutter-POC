import 'package:first_project/Custom_Components/customAppBar.dart';
import 'package:first_project/Navigation_bar/navigation_menu.dart';
import 'package:first_project/stack_page.dart';
import 'package:flutter/material.dart';

class Music extends StatelessWidget {
  const Music({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: "Music (SnackBar)"),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  final snackbar = SnackBar(
                    content: const Text("This is Snack bar message"),
                    duration: const Duration(seconds: 5),
                    action: SnackBarAction(label: 'Undo', onPressed: () {}),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackbar);
                },
                child: const Text("Click to Display")),
                ElevatedButton(onPressed: () { 
                   Navigator.push(context, MaterialPageRoute(builder: (context) => const StackPage()));
                }, child: const Text(' Click to Go Stack Page'))
          ],
        ),
      ),
      bottomNavigationBar: const NavigationMenu(currentIndex: 2),
    );
  }
}


