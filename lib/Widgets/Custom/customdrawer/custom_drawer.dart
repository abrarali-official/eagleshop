import 'package:eagleshop/Widgets/Custom/customdrawer/Drawer_items/drawer_items.dart';
import 'package:flutter/material.dart';

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
              Drawer_Items(name: "Mens", icon: Icons.people, onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }

  Widget headerWidget() {
    const url =
        'https://media.istockphoto.com/photos/learn-to-love-yourself-first-picture-id1291208214?b=1&k=20&m=1291208214&s=170667a&w=0&h=sAq9SonSuefj3d4WKy4KzJvUiLERXge9VgZO-oqKUOo=';
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
            Text('Person name',
                style: TextStyle(fontSize: 14, color: Colors.white)),
            SizedBox(
              height: 10,
            ),
            Text('person@email.com',
                style: TextStyle(fontSize: 14, color: Colors.white))
          ],
        )
      ],
    );
  }
}
