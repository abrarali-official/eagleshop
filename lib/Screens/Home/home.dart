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
<<<<<<< HEAD
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
=======
        appBar: AppBar(),
        drawer: FancyDrawerWrapper(
          backgroundColor: Colors.white,
          controller: _controller,
          drawerItems: <Widget>[
            Text(
              "Go to home",
              style: TextStyle(
                fontSize: 18,
                color: Colors.purple.shade700,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "About us",
              style: TextStyle(
                fontSize: 18,
                color: Colors.purple.shade700,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Our products",
              style: TextStyle(
                fontSize: 18,
                color: Colors.purple.shade700,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Support us",
              style: TextStyle(
                fontSize: 18,
                color: Colors.purple.shade700,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Log out",
              style: TextStyle(
                fontSize: 18,
                color: Colors.purple.shade700,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
          child: Scaffold(
            appBar: AppBar(
              elevation: 4.0,
              title: const Text(
                "Some appbar",
                style: TextStyle(color: Colors.black),
              ),
              backgroundColor: Colors.white,
              leading: IconButton(
                icon: const Icon(
                  Icons.menu,
                  color: Colors.black,
                ),
                onPressed: () {
                  _controller.toggle();
                },
              ),
            ),
            body: const Center(
              child: Text("Body"),
            ),
          ),
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
>>>>>>> fbd6d226c35b00a5ce3482353f79a3d649dec2e0
      ),
    );
  }
}
