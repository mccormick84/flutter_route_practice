import 'package:flutter/material.dart';
import 'package:navigation_practice/layout/main_layout.dart';
import 'package:navigation_practice/screen/route_one_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 안드로이드에서 뒤로가기 버튼 작동 막기
    return WillPopScope(
      onWillPop: () async {
        // true: pop 가능
        // false: pop 불가능
        final canPop = Navigator.of(context).canPop();
        return canPop;
      },
      child: MainLayout(routeName: 'Home Screen', children: [
        ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context) => RouteOneScreen(
                  number: 123,
                ),
              ));
            },
            child: const Text('Push')),
        ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text('Pop')),
        ElevatedButton(
            onPressed: () {
              Navigator.of(context).maybePop();
            },
            child: Text('maybePop')),
        ElevatedButton(
            onPressed: () {
              print(Navigator.of(context).canPop());
            },
            child: Text('canPop')),
      ]),
    );
  }
}
