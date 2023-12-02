import 'package:fefufit_uikit/src/theme/core/theme_data.dart';
import 'package:flutter/material.dart';

class FFTheme extends InheritedWidget {
  final FFThemeData data;

  const FFTheme(this.data, {super.key, required super.child});

  @override
  bool updateShouldNotify(FFTheme oldWidget) => data != oldWidget.data;

  static FFThemeData of(BuildContext context) {
    FFTheme? theme = context.dependOnInheritedWidgetOfExactType<FFTheme>();

    assert(theme != null);

    return theme!.data;
  }

  static FFThemeData? mayOf(BuildContext context) {
    FFTheme? theme = context.dependOnInheritedWidgetOfExactType<FFTheme>();

    return theme?.data;
  }
}
