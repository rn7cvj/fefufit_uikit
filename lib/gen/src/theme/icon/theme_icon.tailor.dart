// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_element, unnecessary_cast

part of '../../../../src/theme/icon/theme_icon.dart';

// **************************************************************************
// TailorAnnotationsGenerator
// **************************************************************************

class FFIcon extends ThemeExtension<FFIcon> {
  const FFIcon({
    required this.location,
    required this.person,
  });

  final SvgPicture location;
  final SvgPicture person;

  static final FFIcon light = FFIcon(
    location: _$FFIcon.location[0],
    person: _$FFIcon.person[0],
  );

  static final FFIcon dark = FFIcon(
    location: _$FFIcon.location[1],
    person: _$FFIcon.person[1],
  );

  static final themes = [
    light,
    dark,
  ];

  @override
  FFIcon copyWith({
    SvgPicture? location,
    SvgPicture? person,
  }) {
    return FFIcon(
      location: location ?? this.location,
      person: person ?? this.person,
    );
  }

  @override
  FFIcon lerp(covariant ThemeExtension<FFIcon>? other, double t) {
    if (other is! FFIcon) return this as FFIcon;
    return FFIcon(
      location: t < 0.5 ? location : other.location,
      person: t < 0.5 ? person : other.person,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FFIcon &&
            const DeepCollectionEquality().equals(location, other.location) &&
            const DeepCollectionEquality().equals(person, other.person));
  }

  @override
  int get hashCode {
    return Object.hash(
      runtimeType.hashCode,
      const DeepCollectionEquality().hash(location),
      const DeepCollectionEquality().hash(person),
    );
  }
}
