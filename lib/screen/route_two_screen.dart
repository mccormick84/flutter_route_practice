import 'package:flutter/material.dart';
import 'package:navigation_practice/layout/main_layout.dart';
import 'package:navigation_practice/screen/route_three_screen.dart';

class RouteTwoScreen extends StatelessWidget {
  const RouteTwoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments;
    return MainLayout(routeName: 'Route 2', children: [
      Text(
        'arguments: $arguments',
        textAlign: TextAlign.center,
      ),
      ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('Pop')),
      ElevatedButton(
          onPressed: () {
            Navigator.of(context).pushNamed('/three', arguments: 999);
          },
          child: const Text('Go to 3(Push Named)')),
      ElevatedButton(
          onPressed: () {
            /*Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (_) => RouteThreeScreen()),
            );*/
            Navigator.of(context).pushReplacementNamed('/three');
          },
          child: Text('Push Replacement')),
      ElevatedButton(
        onPressed: () {
          Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(
              builder: (_) => RouteThreeScreen(),
            ),
            (route) => false,
          );
        },
        child: Text('Push and Remove Until'),
      )
    ]);
  }
}
