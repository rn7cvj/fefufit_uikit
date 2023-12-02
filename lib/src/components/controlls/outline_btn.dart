import 'package:fefufit_uikit/fefufit_uikit.dart';
import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class FFOutlinedButton extends StatelessWidget {
  const FFOutlinedButton(
      {super.key,
      required this.text,
      required this.onTap,
      this.isLoading = false});
  final String text;
  final void Function()? onTap;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(
              color: onTap != null
                  ? context.ffTheme.color.mainLineColor
                  : Theme.of(context).disabledColor,
            ),
            borderRadius: BorderRadius.circular(13)),
        height: 64,
        width: double.infinity,
        child: InkWell(
          borderRadius: BorderRadius.circular(13),
          onTap: isLoading ? null : onTap,
          child: Center(
            child: isLoading
                ? LoadingAnimationWidget.prograssiveDots(
                    color: Colors.white, size: 60)
                : Text(
                    text,
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                        color: Theme.of(context).colorScheme.onPrimary),
                  ),
          ),
        ),
      ),
    );
  }
}
