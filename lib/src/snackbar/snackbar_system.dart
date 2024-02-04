import 'package:balanced_text/balanced_text.dart';
import 'package:fefufit_uikit/fefufit_uikit.dart';
import 'package:flutter/material.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

class FFSnackBarSystem {
  static late final GlobalKey _overlayKey;

  static BuildContext get context => _overlayKey.currentContext!;

  static void init(GlobalKey overlayKey) {
    _overlayKey = overlayKey;
  }

  static Future<void> showInfoSnackBar(
    String message, {
    Duration duration = Duration.zero,
  }) async =>
      Future.delayed(
        duration,
        () => _showSnackBar(message),
      );

  static void _showSnackBar(String message) => showTopSnackBar(
        Overlay.of(context),
        Card(
          elevation: 5,
          color: context.ffTheme.color.mainBackgoundColor,
          child: ConstrainedBox(
            constraints: const BoxConstraints(minHeight: 62),
            child: Padding(
              padding: const EdgeInsets.all(ffPaddingSmall),
              child: Center(
                child: BalancedText(
                  message,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ),
            ),
          ),
        ),
      );
}
