import 'package:example/pages/color/color.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final GlobalKey<NavigatorState> rootNavigatorKey = GlobalKey<NavigatorState>();
final GlobalKey<NavigatorState> _shellNavigationKey =
    GlobalKey<NavigatorState>();

final GoRouter router = GoRouter(
  routerNeglect: true,
  navigatorKey: rootNavigatorKey,
  initialLocation: "/color",
  routes: [
    GoRoute(
      path: "/color",
      builder: (context, state) => const ColorPage(),
    ),
  ],
);
