import 'package:flutter/material.dart';
import '../constants/theme_constanst.dart';

import '../constants/cache_box_key_constants.dart';
import 'cache_core/cache_manager.dart';

class ThemeModeCache extends CacheManager<String> {
  ThemeModeCache() : super(CacheBoxKeyConstants.themeBoxTitle);
  Future<void> putThemeModeToCache(ThemeMode themeMode) async {
    String themeMode_ = themeMode == ThemeMode.dark
        ? ThemeModeContansts.dark
        : ThemeModeContansts.light;
    await putItem(CacheBoxKeyConstants.themeModeItemTitle, themeMode_);
  }

  ThemeMode getThemeMode() {
    String? themeMode_ = getItem(CacheBoxKeyConstants.themeModeItemTitle);
    if (themeMode_ == null) return ThemeMode.light;
    return themeMode_ == ThemeModeContansts.dark
        ? ThemeMode.dark
        : ThemeMode.light;
  }
}
