import 'package:flutter/material.dart';

// ignore: camel_case_types
class Custom_Drawer extends StatelessWidget {
  const Custom_Drawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Drawer(
      backgroundColor: Colors.red,
      elevation: 5,
    );
  }
}
