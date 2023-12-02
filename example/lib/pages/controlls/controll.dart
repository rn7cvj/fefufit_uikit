import 'package:example/common/app_bar.dart';
import 'package:fefufit_uikit/fefufit_uikit.dart';
import 'package:flutter/material.dart';

class ControllPage extends StatelessWidget {
  const ControllPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: demoAppBar(context, "Controlls"),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                // Main Button
                const SizedBox(height: 18),
                ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 360),
                  child: FFMainButton(
                      text: 'Main Button', onTap: () {}, isLoading: false),
                ),
                const SizedBox(height: 18),
                ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 360),
                  child: FFMainButton(
                      text: 'Main Button', onTap: () {}, isLoading: true),
                ),
                const SizedBox(height: 18),
                ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 360),
                  child: const FFMainButton(
                      text: 'Disable Button', onTap: null, isLoading: false),
                ),

                const SizedBox(height: 18),
                ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 360),
                  child: Divider(color: context.ffTheme.color.mainLineColor),
                ),

                // Minor Button
                const SizedBox(height: 18),
                ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 360),
                  child: FFMinorButton(
                      text: 'Minor Button', onTap: () {}, isLoading: false),
                ),
                const SizedBox(height: 18),
                ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 360),
                  child: FFMinorButton(
                      text: 'Main Button', onTap: () {}, isLoading: true),
                ),
                const SizedBox(height: 18),
                ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 360),
                  child: const FFMinorButton(
                      text: 'Disable Button', onTap: null, isLoading: false),
                ),

                // Outline Button

                const SizedBox(height: 18),
                ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 360),
                  child: Divider(color: context.ffTheme.color.mainLineColor),
                ),

                // Minor Button
                const SizedBox(height: 18),
                ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 360),
                  child: FFOutlinedButton(
                      text: 'Outline Button', onTap: () {}, isLoading: false),
                ),
                const SizedBox(height: 18),
                ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 360),
                  child: FFOutlinedButton(
                      text: 'Outline Button', onTap: () {}, isLoading: true),
                ),
                const SizedBox(height: 18),
                ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 360),
                  child: const FFOutlinedButton(
                      text: 'Disable Button', onTap: null, isLoading: false),
                ),
              ],
            ),
          ),
        ));
  }
}
