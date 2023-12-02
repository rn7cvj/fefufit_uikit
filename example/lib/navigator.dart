import 'package:example/router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppNavigator {
  static void goColor() {
    Router.neglect(rootNavigatorKey.currentContext!,
        () => rootNavigatorKey.currentContext!.go("/color"));
  }

  static void goControll() {
    Router.neglect(rootNavigatorKey.currentContext!,
        () => rootNavigatorKey.currentContext!.go("/controll"));
  }
}
