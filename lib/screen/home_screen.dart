import 'package:flutter/material.dart';
import 'package:navigation_practice/layout/main_layout.dart';
import 'package:navigation_practice/screen/route_one_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainLayout(routeName: 'Home Screen', children: [
      ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (BuildContext context) => RouteOneScreen(),
            ));
          },
          child: const Text('Push')),
    ]);
  }
}
