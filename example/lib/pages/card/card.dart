import 'package:example/common/app_bar.dart';
import 'package:fefufit_uikit/fefufit_uikit.dart';
import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  const CardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: demoAppBar(context, "Card"),
      backgroundColor: context.ffTheme.color.mainBackgoundColor,
    );
  }
}
