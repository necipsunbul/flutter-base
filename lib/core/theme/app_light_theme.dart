import 'package:flutter/material.dart';

import 'theme_data_interface.dart';

final class AppLightTheme extends IThemeData {
  @override
  ThemeData get themeData => ThemeData(
        useMaterial3: true,
        colorScheme: colorScheme,
        elevatedButtonTheme: elevatedButtonThemeData,
        outlinedButtonTheme: outlinedButtonTheme,
        cardTheme: cardTheme,
      );

  ColorScheme colorScheme = const ColorScheme(
    brightness: Brightness.light,
    primary: Color(0xFF0059C6),
    onPrimary: Color(0xFFFFFFFF),
    primaryContainer: Color(0xFFD9E2FF),
    onPrimaryContainer: Color(0xFF001A43),
    secondary: Color(0xFF00629F),
    onSecondary: Color(0xFFFFFFFF),
    secondaryContainer: Color(0xFFD0E4FF),
    onSecondaryContainer: Color(0xFF001D34),
    tertiary: Color(0xFF5F52A7),
    onTertiary: Color(0xFFFFFFFF),
    tertiaryContainer: Color(0xFFE5DEFF),
    onTertiaryContainer: Color(0xFF1A0261),
    error: Color(0xFFBA1A1A),
    errorContainer: Color(0xFFFFDAD6),
    onError: Color(0xFFFFFFFF),
    onErrorContainer: Color(0xFF410002),
    background: Color(0xFFF8FDFF),
    onBackground: Color(0xFF001F25),
    surface: Color(0xFFF8FDFF),
    onSurface: Color(0xFF001F25),
    surfaceVariant: Color(0xFFE1E2EC),
    onSurfaceVariant: Color(0xFF44464F),
    outline: Color(0xFF757780),
    onInverseSurface: Color(0xFFD6F6FF),
    inverseSurface: Color(0xFF00363F),
    inversePrimary: Color(0xFFAFC6FF),
    shadow: Color(0xFF000000),
    surfaceTint: Color(0xFF0059C6),
    outlineVariant: Color(0xFFC5C6D0),
    scrim: Color(0xFF000000),
  );
}
