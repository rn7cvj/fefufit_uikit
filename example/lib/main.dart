import 'package:fefufit_uikit/fefufit_uikit.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

final routes = [
  NavBarElement(
    icon: const Icon(Icons.home, color: Colors.white),
    onTap: () {},
  ),
  NavBarElement(
    icon: const Icon(Icons.calendar_month, color: Colors.white),
    onTap: () {},
  ),
  NavBarElement(
    icon: const Icon(Icons.person, color: Colors.white),
    onTap: () {},
  ),
];

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            const Center(
              child: Text('Hello World!'),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: NavBar(
                routes,
                areaHeight: 102,
                navbarColor: Colors.grey,
              ),
            )
          ],
        ),
      ),
    );
  }
}
