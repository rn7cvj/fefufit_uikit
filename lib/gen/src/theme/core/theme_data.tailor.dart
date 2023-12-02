// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_element, unnecessary_cast

part of '../../../../src/theme/core/theme_data.dart';

// **************************************************************************
// TailorAnnotationsGenerator
// **************************************************************************

class FFTheme extends ThemeExtension<FFTheme> with DiagnosticableTreeMixin {
  const FFTheme({
    required this.color,
  });

  final FFColor color;

  static final FFTheme light = FFTheme(
    color: _$FFTheme.color[0],
  );

  static final FFTheme dark = FFTheme(
    color: _$FFTheme.color[1],
  );

  static final themes = [
    light,
    dark,
  ];

  @override
  FFTheme copyWith({
    FFColor? color,
  }) {
    return FFTheme(
      color: color ?? this.color,
    );
  }

  @override
  FFTheme lerp(covariant ThemeExtension<FFTheme>? other, double t) {
    if (other is! FFTheme) return this as FFTheme;
    return FFTheme(
      color: color.lerp(other.color, t) as FFColor,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FFTheme'))
      ..add(DiagnosticsProperty('color', color));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FFTheme &&
            const DeepCollectionEquality().equals(color, other.color));
  }

  @override
  int get hashCode {
    return Object.hash(
      runtimeType.hashCode,
      const DeepCollectionEquality().hash(color),
    );
  }
}
