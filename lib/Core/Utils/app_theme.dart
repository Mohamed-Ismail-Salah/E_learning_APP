import 'package:e_learning/Core/Utils/colors.dart';
import 'package:flutter/material.dart';

abstract class AppTheme {
  static ThemeData appThemeData = ThemeData(
    scaffoldBackgroundColor: AppColor.primaryColor,
    colorScheme:
        ColorScheme.fromSwatch().copyWith(primary: AppColor.secondaryColor),
  );
}
