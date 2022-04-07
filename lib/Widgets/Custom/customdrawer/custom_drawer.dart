import 'package:eagleshop/Screens/SignIn/sign_in.dart';
import 'package:eagleshop/Widgets/Custom/customdrawer/Drawer_items/drawer_items.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: camel_case_types
class Custom_Drawer extends StatelessWidget {
  const Custom_Drawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: Colors.red,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24.0, 80, 24, 0),
          child: Column(
            children: [
              headerWidget(),
              const SizedBox(
                height: 40,
              ),
              const Divider(
                thickness: 1,
                height: 10,
                color: Colors.white,
              ),
              const SizedBox(
                height: 40,
              ),
              Drawer_Items(name: "Mens", icon: Icons.people, onPressed: () {}),
              const SizedBox(
                height: 20,
              ),
              Drawer_Items(name: "Mens", icon: Icons.people, onPressed: () {}),
              const SizedBox(
                height: 20,
              ),
              Drawer_Items(name: "Mens", icon: Icons.people, onPressed: () {}),
              const SizedBox(
                height: 20,
              ),
              Drawer_Items(name: "Mens", icon: Icons.people, onPressed: () {}),
              const SizedBox(
                height: 20,
              ),
              Drawer_Items(name: "Mens", icon: Icons.people, onPressed: () {}),
              const SizedBox(
                height: 20,
              ),
              const Divider(
                thickness: 1,
                height: 10,
                color: Colors.white,
              ),
              const SizedBox(
                height: 30,
              ),
              Drawer_Items(
                  name: "Settings",
                  icon: Icons.settings_outlined,
                  onPressed: () {}),
              Drawer_Items(
                  name: "Log Out",
                  icon: Icons.logout_outlined,
                  onPressed: () {
                    Get.to(() => const Sign_In());
                  }),
            ],
          ),
        ),
      ),
    );
  }

  Widget headerWidget() {
    const url =
        'https://www.freepik.com/free-photo/bohemian-man-with-his-arms-crossed_1157693.htm#query=person&position=3&from_view=search';
    return Row(
      children: [
        const CircleAvatar(
          radius: 40,
          backgroundImage: NetworkImage(url),
        ),
        const SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text('Person Name',
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                    fontWeight: FontWeight.bold)),
            SizedBox(
              height: 10,
            ),
            Text('person@gmail.com',
                style: TextStyle(fontSize: 14, color: Colors.white))
          ],
        )
      ],
    );
  }
}
