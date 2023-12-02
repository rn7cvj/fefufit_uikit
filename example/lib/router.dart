import 'package:example/pages/color/color.dart';
import 'package:example/pages/controlls/controll.dart';
import 'package:example/pages/main/main.dart';
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
    GoRoute(path: "/", builder: (context, state) => const MainPage(), routes: [
      GoRoute(
        path: "color",
        builder: (context, state) => const ColorPage(),
      ),
      GoRoute(
        path: "controll",
        builder: (context, state) => const ControllPage(),
      ),
    ]),
  ],
);
