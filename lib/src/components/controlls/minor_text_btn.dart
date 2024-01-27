import 'package:fefufit_uikit/fefufit_uikit.dart';
import 'package:flutter/material.dart';

class FFMinorTextButton extends StatelessWidget {
  const FFMinorTextButton({
    super.key,
    required this.text,
    this.onTap,
  });

  final String text;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: onTap, child: Text(text));
  }
}
