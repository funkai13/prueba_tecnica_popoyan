import 'package:flutter/material.dart';
import 'package:prueba_tecnica_popoyan/core/theme/typography.dart';
import 'package:prueba_tecnica_popoyan/core/utils/constanst.dart';

import 'colors.dart';

class AppTheme {
  static ThemeData lightTheme(BuildContext context) {
    final textTheme = _getTextTheme(context);
    return ThemeData(
      primaryColor: AppColors.primaryColor,
      scaffoldBackgroundColor: AppColors.backgroundColor,
      textTheme: textTheme,
    );
  }

  static ThemeData darkTheme(BuildContext context) {
    final textTheme = _getTextTheme(context);
    return ThemeData(
      brightness: Brightness.dark,
      primaryColor: AppColors.primaryColor,
      textTheme: textTheme,
    );
  }

  static TextTheme _getTextTheme(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return screenWidth >= Breakpoints.mobile
        ? AppTypography.tabletTextTheme
        : AppTypography.mobileTextTheme;
  }
}
