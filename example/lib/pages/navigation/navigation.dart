import 'package:example/common/app_bar.dart';
import 'package:fefufit_uikit/fefufit_uikit.dart';
import 'package:flutter/material.dart';

class NavigationPage extends StatelessWidget {
  const NavigationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: demoAppBar(context, "Navigation"),
      body: Scaffold(
        backgroundColor: context.ffTheme.color.mainBackgoundColor,
        body: Center(
          child: FFNavBar(
            [
              FFNavBarElement(icon: Icon(Icons.first_page), onTap: () {}),
              FFNavBarElement(icon: Icon(Icons.pages), onTap: () {}),
              FFNavBarElement(icon: Icon(Icons.last_page), onTap: () {}),
            ],
            areaHeight: 50,
          ),
        ),
      ),
    );
  }
}
