import 'package:fefufit_uikit/src/theme/export_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

class FFEventCard extends StatelessWidget {
  const FFEventCard({
    super.key,
    required this.eventName,
    required this.beginTime,
    required this.endTime,
    required this.location,
    required this.coachName,
    required this.spacesInfoBuilde,
  });

  final String eventName;
  final TimeOfDay beginTime;
  final TimeOfDay endTime;

  final String location;
  final String coachName;

  final Widget Function() spacesInfoBuilde;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: context.ffTheme.color.minorBackgoundColor,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(eventName),
          Text(
              "${beginTime.hour}:${beginTime.minute} - ${endTime.hour}:${endTime.minute}"),
          Row(
            children: [
              SvgPicture.asset("assets/icons/location.svg",
                  width: 24, height: 24),
              Text(location),
            ],
          ),
          Row(
            children: [
              SvgPicture.asset("assets/icons/person.svg",
                  width: 24, height: 24),
              Text(coachName),
            ],
          ),
          spacesInfoBuilde(),
        ],
      ),
    );
  }
}
