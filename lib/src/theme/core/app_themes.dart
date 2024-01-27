import 'package:fefufit_uikit/fefufit_uikit.dart';
import 'package:fefufit_uikit/src/theme/color/theme_color.dart';
import 'package:fefufit_uikit/src/theme/icon/theme_icon.dart';
import 'package:flutter/material.dart';

ThemeData _ffLigthme = ThemeData.from(
  colorScheme: ColorScheme.fromSeed(
    seedColor: const Color.fromRGBO(67, 67, 244, 1),
    brightness: Brightness.light,
  ),
);

ThemeData ffLightTheme = _ffLigthme.copyWith(
  extensions: [FFTheme(color: FFColor.light, icon: FFIcon.light)],
);

ThemeData _ffDarkTheme = ThemeData.from(
  colorScheme: ColorScheme.fromSeed(
    seedColor: const Color.fromRGBO(67, 67, 244, 1),
    brightness: Brightness.dark,
  ),
);

ThemeData ffDarkTheme = _ffDarkTheme.copyWith(
  extensions: [FFTheme(color: FFColor.dark, icon: FFIcon.dark)],
);
