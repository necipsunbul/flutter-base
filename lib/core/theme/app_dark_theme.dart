import 'package:flutter/material.dart';

import 'theme_data_interface.dart';

final class AppDarkTheme extends IThemeData {
  @override
  ThemeData get themeData => ThemeData(
        useMaterial3: true,
        colorScheme: colorScheme,
        elevatedButtonTheme: elevatedButtonThemeData,
        outlinedButtonTheme: outlinedButtonTheme,
        cardTheme: cardTheme,
      );
  ColorScheme colorScheme = const ColorScheme(
    brightness: Brightness.dark,
    primary: Color(0xFFAFC6FF),
    onPrimary: Color(0xFF002D6C),
    primaryContainer: Color(0xFF004398),
    onPrimaryContainer: Color(0xFFD9E2FF),
    secondary: Color(0xFF9BCBFF),
    onSecondary: Color(0xFF003256),
    secondaryContainer: Color(0xFF004A79),
    onSecondaryContainer: Color(0xFFD0E4FF),
    tertiary: Color(0xFFC9BFFF),
    onTertiary: Color(0xFF302175),
    tertiaryContainer: Color(0xFF473A8D),
    onTertiaryContainer: Color(0xFFE5DEFF),
    error: Color(0xFFFFB4AB),
    errorContainer: Color(0xFF93000A),
    onError: Color(0xFF690005),
    onErrorContainer: Color(0xFFFFDAD6),
    background: Color(0xFF000000),
    onBackground: Color(0xFFA6EEFF),
    surface: Color(0xFF000000),
    onSurface: Color(0xFFA6EEFF),
    surfaceVariant: Color(0xFF44464F),
    onSurfaceVariant: Color(0xFFC5C6D0),
    outline: Color(0xFF8F9099),
    onInverseSurface: Color(0xFF001F25),
    inverseSurface: Color(0xFFA6EEFF),
    inversePrimary: Color(0xFF0059C6),
    shadow: Color(0xFF000000),
    surfaceTint: Color(0xFFAFC6FF),
    outlineVariant: Color(0xFF44464F),
    scrim: Color(0xFF000000),
  );
}
