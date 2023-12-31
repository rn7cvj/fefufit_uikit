import 'package:fefufit_uikit/src/components/navigation/models/navbar_element.dart';
import 'package:flutter/material.dart';

class FFNavBar extends StatelessWidget {
  const FFNavBar(
    this.elements, {
    super.key,
    required this.areaHeight,
    this.navbarColor = const Color.fromRGBO(223, 223, 223, 1),
    this.navbarHeight = 56,
    this.navbarWidth = 250,
    this.navbarAligment = Alignment.center,
  });

  final List<FFNavBarElement> elements;
  final double areaHeight;

  final double navbarHeight;
  final double navbarWidth;
  final Color navbarColor;

  final Alignment navbarAligment;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        height: areaHeight,
        child: Align(
          alignment: navbarAligment,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              color: navbarColor,
              margin: EdgeInsets.zero,
              elevation: 2,
              child: SizedBox(
                height: navbarHeight,
                width: navbarWidth,
                child: Row(
                  children: elements
                      .asMap()
                      .entries
                      .map(
                        (e) => Expanded(
                          child: InkWell(
                            onTap: e.value.onTap,
                            child: SizedBox.expand(
                              child: e.value.icon,
                            ),
                          ),
                        ),
                      )
                      .toList(),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
