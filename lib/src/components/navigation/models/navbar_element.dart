import 'package:flutter/widgets.dart';

class FFNavBarElement {
  final void Function()? onTap;
  final Widget icon;
  final String? title;
  final bool isActive;

  FFNavBarElement({
    required this.icon,
    required this.onTap,
    this.title,
    this.isActive = false,
  });
}
