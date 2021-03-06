import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shadi_systems_task/shared/styles/colors.dart';

ThemeData lightTheme = ThemeData(
  scaffoldBackgroundColor: figmaFFFFFF,
  backgroundColor: figmaFFFFFF,
  appBarTheme: AppBarTheme(
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: figmaFFFFFF,
        statusBarBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.dark,
        systemStatusBarContrastEnforced: true,
      ),
      color: figmaFFFFFF),
);
ThemeData darkTheme = ThemeData();
