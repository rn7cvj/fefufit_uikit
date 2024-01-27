import 'package:example/common/app_bar.dart';
import 'package:example/utils.dart';
import 'package:flutter/material.dart';
import 'package:fefufit_uikit/fefufit_uikit.dart';

class ColorPage extends StatelessWidget {
  const ColorPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<dynamic> data = [
      {
        "color": context.ffTheme.color.mainBackgoundColor,
        "name": "Main Backgound",
      },
      {
        "color": context.ffTheme.color.minorBackgoundColor,
        "name": "Minor Backgound",
      },
      {
        "color": context.ffTheme.color.mainControllColor,
        "name": "Main Controll",
      },
      {
        "color": context.ffTheme.color.minorControllColor,
        "name": "Minor Controll",
      },
      {
        "color": context.ffTheme.color.mainLineColor,
        "name": "Main Line",
      },
      {
        "color": context.ffTheme.color.mainTextColor,
        "name": "Main Text",
      },
    ];

    return Scaffold(
      appBar: demoAppBar(context, "Colors"),
      backgroundColor: context.ffTheme.color.mainBackgoundColor,
      body: Center(
        child: Wrap(
          alignment: WrapAlignment.center,
          spacing: 18,
          runSpacing: 18,
          children: data
              .map((d) => ColorCircle(
                    color: d["color"],
                    name: d["name"],
                  ))
              .toList(),
        ),
      ),
    );
  }
}

class ColorCircle extends StatelessWidget {
  const ColorCircle({super.key, required this.color, required this.name});

  final Color color;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData.from(
        colorScheme: ColorScheme.fromSeed(
          seedColor: color,
          brightness: Theme.of(context).brightness,
        ),
      ),
      child: Column(
        children: [
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(shape: BoxShape.circle, color: color),
            child: Center(
              child: Text(
                color.toHex(),
                style: Theme.of(context)
                    .textTheme
                    .titleMedium
                    ?.copyWith(color: Theme.of(context).colorScheme.onPrimary),
              ),
            ),
          ),
          const SizedBox(height: 8.0),
          Text(name)
        ],
      ),
    );
  }
}
