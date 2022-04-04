
import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 3,
        child: Row(
          children: [Container(color: Colors.red)],
        ));
  }
}
