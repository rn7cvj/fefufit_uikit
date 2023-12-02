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
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              FFEventCard(
                eventName: "Групповое занятие по аэробике",
                beginTime: TimeOfDay(hour: 14, minute: 30),
                endTime: TimeOfDay(hour: 16, minute: 0),
                location: "Корпус S, зал аэробики",
                coachName: "Кердун Юлия Олеговна",
                spacesInfoBuilde: () => Text("Свободно 3 места из 10"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
