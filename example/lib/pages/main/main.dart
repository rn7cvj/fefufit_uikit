import 'package:example/main.dart';
import 'package:example/navigator.dart';
import 'package:fefufit_uikit/fefufit_uikit.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("FefuFit UiKit"),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 360),
                  child: const FFMainButton(
                      text: "Colors", onTap: AppNavigator.goColor)),
              const SizedBox(height: 18),
              ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 360),
                  child: const FFMainButton(
                      text: "Controls", onTap: AppNavigator.goControll)),
              const SizedBox(height: 18),
              ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 360),
                  child: const FFMainButton(
                      text: "Navigation", onTap: AppNavigator.goNavigation)),
              const SizedBox(height: 18),
              ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 360),
                  child: const FFMainButton(
                      text: "Card", onTap: AppNavigator.goCard)),
            ],
          ),
        ),
      ),
    );
  }
}
