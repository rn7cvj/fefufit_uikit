import 'package:fefufit_uikit/src/theme/icon/theme_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:fefufit_uikit/src/theme/color/theme_color.dart';
import 'package:theme_tailor_annotation/theme_tailor_annotation.dart';

part '../../../gen/src/theme/core/theme_data.tailor.dart';

@Tailor(
  themes: ['light', 'dark'],
  themeGetter: ThemeGetter.none,
  // generateStaticGetters: true,
)
class _$FFTheme {
  @themeExtension
  static List<FFColor> color = [
    FFColor.light,
    FFColor.dark,
  ];

  @themeExtension
  static List<FFIcon> icon = [
    FFIcon.light,
    FFIcon.dark,
  ];
}

extension FFThemeBuildContext on BuildContext {
  FFTheme get ffTheme => Theme.of(this).extension<FFTheme>()!;
}
