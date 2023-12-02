import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

Observable<ThemeMode> selectedThemeMode =
    Observable<ThemeMode>(ThemeMode.light);
