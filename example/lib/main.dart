import 'package:example/controllers/theme/controller.dart';
import 'package:example/pages/color/color.dart';
import 'package:example/router.dart';
import 'package:fefufit_uikit/fefufit_uikit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

Future<void> main() async {
  setUpSystemUIOverlay();

  runApp(App());
}

void setUpSystemUIOverlay() {
  WidgetsFlutterBinding.ensureInitialized();

  // Setting SysemUIOverlay
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      systemStatusBarContrastEnforced: false,
      systemNavigationBarColor: Colors.transparent,
      systemNavigationBarDividerColor: Colors.transparent));
  // Setting SystmeUIMode
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    final _lightTheme = ThemeData(
      brightness: Brightness.light,
      extensions: [FFTheme.light],
    );

    final _darkTheme = ThemeData(
      brightness: Brightness.dark,
      extensions: [FFTheme.dark],
    );

    return Observer(builder: (context) {
      return MaterialApp.router(
        title: "FefuFit UiKit Demo",
        themeMode: selectedThemeMode.value,
        theme: _lightTheme,
        darkTheme: _darkTheme,
        debugShowCheckedModeBanner: false,
        routerConfig: router,
      );
    });
  }
}
