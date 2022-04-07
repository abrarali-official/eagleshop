import 'package:flutter/material.dart';

import '../../Widgets/Custom/Custom_nav/customnav.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const CustomNavbar(),
      appBar: AppBar(),
      body: const Center(
          child: Text(
        "Settings",
        style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
      )),
    );
  }
}
