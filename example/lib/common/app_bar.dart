import 'package:example/controllers/theme/controller.dart';
import 'package:example/navigator.dart';
import 'package:fefufit_uikit/fefufit_uikit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';

AppBar demoAppBar(BuildContext context, String title) {
  return AppBar(
    title: Text(title),
    automaticallyImplyLeading: false,
    forceMaterialTransparency: false,
    leading: const IconButton(
        onPressed: AppNavigator.goMain, icon: Icon(Icons.arrow_back)),
    actions: [const ThemeSwitcher()],
    backgroundColor: context.ffTheme.color.minorBackgoundColor,
  );
}

class ThemeSwitcher extends StatelessWidget {
  const ThemeSwitcher({super.key});

  @override
  Widget build(BuildContext context) => Observer(builder: (context) {
        IconData icon = selectedThemeMode.value == ThemeMode.light
            ? Icons.light_mode
            : Icons.dark_mode;

        return IconButton(onPressed: changeTheme, icon: Icon(icon));
      });

  void changeTheme() => runInAction(() {
        selectedThemeMode.value = selectedThemeMode.value == ThemeMode.light
            ? ThemeMode.dark
            : ThemeMode.light;
      });
}
