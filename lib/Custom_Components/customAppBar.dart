// ignore_for_file: file_names

// ----------------------- Custom AppBar --------------------------

import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const CustomAppBar({super.key, required this.title});

  @override
  Size get preferredSize => const Size.fromHeight(50.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      elevation: 0,
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.black,
          letterSpacing: 1.5,
        ),
      ),
      backgroundColor: Colors.green,
    );
  }
}