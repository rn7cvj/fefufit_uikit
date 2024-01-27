import 'package:flutter/material.dart';

class FFMainTextButton extends StatelessWidget {
  const FFMainTextButton({
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
