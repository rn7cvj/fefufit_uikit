import 'package:flutter/widgets.dart';

class NavBarElement {
  final void Function()? onTap;
  final Widget icon;
  final String? title;
  final bool isActive;

  NavBarElement({
    required this.icon,
    required this.onTap,
    this.title,
    this.isActive = false,
  });
}
