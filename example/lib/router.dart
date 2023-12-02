import 'package:example/pages/card/card.dart';
import 'package:example/pages/color/color.dart';
import 'package:example/pages/controlls/controll.dart';
import 'package:example/pages/main/main.dart';
import 'package:example/pages/navigation/navigation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final GlobalKey<NavigatorState> rootNavigatorKey = GlobalKey<NavigatorState>();
final GlobalKey<NavigatorState> _shellNavigationKey =
    GlobalKey<NavigatorState>();

final GoRouter router = GoRouter(
  routerNeglect: true,
  navigatorKey: rootNavigatorKey,
  initialLocation: "/",
  routes: [
    GoRoute(
      path: "/",
      name: "main",
      builder: (context, state) => const MainPage(),
      routes: [
        GoRoute(
          path: "color",
          name: "color",
          builder: (context, state) => const ColorPage(),
        ),
        GoRoute(
          path: "controll",
          name: "controll",
          builder: (context, state) => const ControllPage(),
        ),
        GoRoute(
          path: "navigation",
          name: "navigation",
          builder: (context, state) => const NavigationPage(),
        ),
        GoRoute(
          path: "card",
          name: "card",
          builder: (context, state) => const CardPage(),
        ),
      ],
    ),
  ],
);
