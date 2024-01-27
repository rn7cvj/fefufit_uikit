import 'package:fefufit_uikit/fefufit_uikit.dart';
import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class FFMinorButton extends StatelessWidget {
  const FFMinorButton(
      {super.key,
      required this.text,
      required this.onTap,
      this.isLoading = false});
  final String text;
  final void Function()? onTap;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.zero,
      color: onTap != null
          ? context.ffTheme.color.minorControllColor
          : context.ffTheme.color.minorControllColor.withOpacity(0.6),
      child: InkWell(
        borderRadius: BorderRadius.circular(13),
        onTap: isLoading ? null : onTap,
        child: SizedBox(
          height: 62,
          width: double.infinity,
          child: Center(
            child: isLoading
                ? LoadingAnimationWidget.prograssiveDots(
                    color: context.ffTheme.color.onMinorControllColor,
                    size: 60,
                  )
                : Text(
                    text,
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                        color: context.ffTheme.color.onMinorControllColor),
                  ),
          ),
        ),
      ),
    );
  }
}
