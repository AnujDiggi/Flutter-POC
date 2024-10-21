// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'dart:io';

import 'package:first_project/Custom_Components/customAppBar.dart';
import 'package:first_project/Custom_Components/customeDrawer.dart';
import 'package:first_project/Navigation_bar/navigation_menu.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  ProfilePageState createState() => ProfilePageState();
}

class ProfilePageState extends State<ProfilePage> {
  File? _image;
  final ImagePicker _picker = ImagePicker();

  @override
  void initState() {
    super.initState();
    requestPermission();
  }

  Future<void> requestPermission() async {
    var cameraStatus = await Permission.camera.status;
    if (cameraStatus.isDenied) {
      await Permission.camera.request();
    }

    var galleryStatus = await Permission.photos.status;
    if (galleryStatus.isDenied) {
      await Permission.photos.request();
    }
    if (cameraStatus.isPermanentlyDenied || galleryStatus.isPermanentlyDenied) {
      openAppSettings();
    }
  }

  Future<void> _pickImageGallery() async {
    try {
      final pickedFile = await _picker.pickImage(source: ImageSource.gallery);
      if (pickedFile != null) {
        setState(() {
          _image = File(pickedFile.path);
        });
      } else {
        print("no Image Selected");
      }
    } catch (e) {
      print('Error for Picking Image From Gallary:  $e');
    }
  }

  Future<void> _captureImageCamera() async {
    try {
      final pickedFile = await _picker.pickImage(source: ImageSource.camera);
      if (pickedFile != null) {
        setState(() {
          _image = File(pickedFile.path);
        });
      } else {
        print("No Image Captured");
      }
    } catch (e) {
      print("Error for Capturing Image from camera: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: "Profile"),
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _image != null
                  ? Image.file(
                      _image!,
                      width: 300,
                      height: 300,
                    )
                  : const Image(
                      image: AssetImage("assets/avatar.jpg"),
                      width: 200,
                      height: 200,
                    ),
              const SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  ElevatedButton(
                      onPressed: _pickImageGallery,
                      child: const Text("Pick Image From Gallery")),
                  ElevatedButton(
                      onPressed: _captureImageCamera,
                      child: const Text("Choose Image From Camera")),
                ],
              ),
            ],
          ),
        ),
      ),
      drawer: const CustomDrawer(),
      bottomNavigationBar: const NavigationMenu(currentIndex: 0),
    );
  }
}
