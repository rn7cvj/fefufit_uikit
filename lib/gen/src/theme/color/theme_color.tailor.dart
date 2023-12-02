// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_element, unnecessary_cast

part of '../../../../src/theme/color/theme_color.dart';

// **************************************************************************
// TailorAnnotationsGenerator
// **************************************************************************

class FFColor extends ThemeExtension<FFColor> {
  const FFColor({
    required this.mainBackgoundColor,
    required this.mainControllColor,
    required this.mainLineColor,
    required this.mainTextColor,
    required this.minorBackgoundColor,
    required this.minorControllColor,
  });

  final Color mainBackgoundColor;
  final Color mainControllColor;
  final Color mainLineColor;
  final Color mainTextColor;
  final Color minorBackgoundColor;
  final Color minorControllColor;

  static const FFColor light = FFColor(
    mainBackgoundColor: Color.fromRGBO(255, 255, 255, 1),
    mainControllColor: Color.fromRGBO(67, 67, 244, 1),
    mainLineColor: Color.fromRGBO(67, 67, 244, 1),
    mainTextColor: Color.fromRGBO(37, 37, 37, 1),
    minorBackgoundColor: Color.fromRGBO(247, 247, 247, 1),
    minorControllColor: Color.fromRGBO(37, 37, 37, 1),
  );

  static const FFColor dark = FFColor(
    mainBackgoundColor: Color.fromRGBO(37, 37, 37, 1),
    mainControllColor: Color.fromRGBO(67, 67, 244, 1),
    mainLineColor: Color.fromRGBO(225, 225, 225, 1),
    mainTextColor: Color.fromRGBO(225, 225, 225, 1),
    minorBackgoundColor: Color.fromRGBO(74, 74, 74, 1),
    minorControllColor: Color.fromRGBO(223, 223, 223, 1),
  );

  static const themes = [
    light,
    dark,
  ];

  @override
  FFColor copyWith({
    Color? mainBackgoundColor,
    Color? mainControllColor,
    Color? mainLineColor,
    Color? mainTextColor,
    Color? minorBackgoundColor,
    Color? minorControllColor,
  }) {
    return FFColor(
      mainBackgoundColor: mainBackgoundColor ?? this.mainBackgoundColor,
      mainControllColor: mainControllColor ?? this.mainControllColor,
      mainLineColor: mainLineColor ?? this.mainLineColor,
      mainTextColor: mainTextColor ?? this.mainTextColor,
      minorBackgoundColor: minorBackgoundColor ?? this.minorBackgoundColor,
      minorControllColor: minorControllColor ?? this.minorControllColor,
    );
  }

  @override
  FFColor lerp(covariant ThemeExtension<FFColor>? other, double t) {
    if (other is! FFColor) return this as FFColor;
    return FFColor(
      mainBackgoundColor:
          Color.lerp(mainBackgoundColor, other.mainBackgoundColor, t)!,
      mainControllColor:
          Color.lerp(mainControllColor, other.mainControllColor, t)!,
      mainLineColor: Color.lerp(mainLineColor, other.mainLineColor, t)!,
      mainTextColor: Color.lerp(mainTextColor, other.mainTextColor, t)!,
      minorBackgoundColor:
          Color.lerp(minorBackgoundColor, other.minorBackgoundColor, t)!,
      minorControllColor:
          Color.lerp(minorControllColor, other.minorControllColor, t)!,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FFColor &&
            const DeepCollectionEquality()
                .equals(mainBackgoundColor, other.mainBackgoundColor) &&
            const DeepCollectionEquality()
                .equals(mainControllColor, other.mainControllColor) &&
            const DeepCollectionEquality()
                .equals(mainLineColor, other.mainLineColor) &&
            const DeepCollectionEquality()
                .equals(mainTextColor, other.mainTextColor) &&
            const DeepCollectionEquality()
                .equals(minorBackgoundColor, other.minorBackgoundColor) &&
            const DeepCollectionEquality()
                .equals(minorControllColor, other.minorControllColor));
  }

  @override
  int get hashCode {
    return Object.hash(
      runtimeType.hashCode,
      const DeepCollectionEquality().hash(mainBackgoundColor),
      const DeepCollectionEquality().hash(mainControllColor),
      const DeepCollectionEquality().hash(mainLineColor),
      const DeepCollectionEquality().hash(mainTextColor),
      const DeepCollectionEquality().hash(minorBackgoundColor),
      const DeepCollectionEquality().hash(minorControllColor),
    );
  }
}
