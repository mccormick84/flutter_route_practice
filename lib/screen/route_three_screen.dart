import 'package:flutter/material.dart';
import 'package:navigation_practice/layout/main_layout.dart';

class RouteThreeScreen extends StatelessWidget {
  const RouteThreeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final argument = ModalRoute.of(context)!.settings.arguments;

    return MainLayout(routeName: 'Route 3', children: [
      ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text('Pop')),
      Text(
        'arguments: $argument',
        textAlign: TextAlign.center,
      ),
    ]);
  }
}
