import 'package:flutter/material.dart';

import '../base/state/base_state.dart';
import '../cache/theme_cache_manager.dart';
import '../constants/theme_constanst.dart';

final class ChangeThemeCubit extends BaseState<ThemeMode> {
  ThemeModeCache cache = ThemeModeCache();
  ChangeThemeCubit() : super(defaultThemeMode);

  void changeTheme(ThemeMode themeMode) async {
    await _initCache();
    emit(themeMode);
    await cache.putThemeModeToCache(themeMode);
  }

  Future<void> setDefaultTheme() async {
    await _initCache();
    emit(cache.getThemeMode());
  }

  Future<void> _initCache() async {
    await cache.init();
  }
}
