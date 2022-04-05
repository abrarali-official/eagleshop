import 'package:fancy_drawer/fancy_drawer.dart';
import 'package:flutter/material.dart';
import '../../Widgets/Custom/customnav.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  late FancyDrawerController _controller;
  @override
  void initState() {
    super.initState();
    _controller = FancyDrawerController(
        vsync: this, duration: const Duration(milliseconds: 250))
      ..addListener(() {
        setState(() {});
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Home"),
        ),
        bottomNavigationBar: const CustomNavbar(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(50),
            ),
          ),
          onPressed: () {},
          child: const Icon(Icons.add_shopping_cart_rounded),
        ),
        drawer: const Drawer(
          backgroundColor: Colors.red,
          elevation: 5,
        ),
      ),
    );
  }
}
