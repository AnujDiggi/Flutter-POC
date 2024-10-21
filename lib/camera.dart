// ignore_for_file: library_private_types_in_public_api

import 'package:first_project/Custom_Components/customAppBar.dart';
import 'package:flutter/material.dart';

class Camera extends StatefulWidget {
  const Camera({super.key});

  @override
  _CameraState createState() => _CameraState();
}

class _CameraState extends State<Camera> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
       appBar: CustomAppBar(title: "Profile Picture"),
       body: Center(
           child: Text("Profile Picture"),
       ),
    );
  }
}