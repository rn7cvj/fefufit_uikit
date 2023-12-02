import 'package:example/router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppNavigator {
  static void goMain() {
    Router.neglect(rootNavigatorKey.currentContext!,
        () => rootNavigatorKey.currentContext!.goNamed("main"));
  }

  static void goColor() {
    Router.neglect(rootNavigatorKey.currentContext!,
        () => rootNavigatorKey.currentContext!.goNamed("color"));
  }

  static void goControll() {
    Router.neglect(rootNavigatorKey.currentContext!,
        () => rootNavigatorKey.currentContext!.goNamed("controll"));
  }

  static void goNavigation() {
    Router.neglect(rootNavigatorKey.currentContext!,
        () => rootNavigatorKey.currentContext!.goNamed("navigation"));
  }

  static void goCard() {
    Router.neglect(rootNavigatorKey.currentContext!,
        () => rootNavigatorKey.currentContext!.go("/card"));
  }
}
