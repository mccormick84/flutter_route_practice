import 'package:flutter/material.dart';
import 'package:navigation_practice/layout/main_layout.dart';
import 'package:navigation_practice/screen/route_two_screen.dart';

class RouteOneScreen extends StatelessWidget {
  final int? number;

  const RouteOneScreen({
    this.number,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainLayout(routeName: 'Route 1', children: [
      ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('Pop')),
      ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                  builder: (_) => RouteTwoScreen(),
                  settings: RouteSettings(
                    arguments: 789,
                  )),
            );
          },
          child: Text('Go to Route 2')),
      // ElevatedButton(
      //     onPressed: () {
      //       Navigator.of(context).pushNamed('/three');
      //     },
      //     child: const Text('Go to 3(Push Named)')),
      Text(
        number.toString(),
        textAlign: TextAlign.center,
      ),
    ]);
  }
}
