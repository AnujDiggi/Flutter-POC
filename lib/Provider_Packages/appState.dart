// ignore_for_file: file_names, library_private_types_in_public_api

import 'package:first_project/Custom_Components/customAppBar.dart';
import 'package:flutter/material.dart';

class AppState extends StatefulWidget {
  const AppState({ super.key });

  @override
  _AppStateState createState() => _AppStateState();
}

class _AppStateState extends State<AppState> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        appBar: CustomAppBar(title: "App State"),
    );
  }
}