import 'package:flutter/material.dart';

import '../constants/theme_constanst.dart';

abstract class IThemeData {
  ThemeData get themeData;
  ElevatedButtonThemeData get elevatedButtonThemeData =>
      ElevatedButtonThemeData(style: _elevatedButtonStyle);
  OutlinedButtonThemeData get outlinedButtonTheme =>
      OutlinedButtonThemeData(style: _outlinedButtonTheme);

  CardTheme get cardTheme => _cardTheme;
}

ButtonStyle _elevatedButtonStyle = ElevatedButton.styleFrom(
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(ThemeRadiusConstants.borderRadiusSmall),
  ),
  splashFactory: NoSplash.splashFactory,
  elevation: ElevationContants.large,
);

ButtonStyle _outlinedButtonTheme = OutlinedButton.styleFrom(
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(ThemeRadiusConstants.borderRadiusSmall),
  ),
  splashFactory: NoSplash.splashFactory,
  elevation: ElevationContants.large,
);

CardTheme _cardTheme = CardTheme(
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(ThemeRadiusConstants.borderRadiusSmall),
  ),
  elevation: ElevationContants.large,
);
