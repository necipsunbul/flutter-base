import 'package:flutter/material.dart';
import '../components/page_404.dart';
import '../constants/app_route_contants.dart';
import '../../screens/test/view/test_view.dart';

import '../../screens/splash/splash_view.dart';

class NavigationRoute {
  NavigationRoute._init();
  static final NavigationRoute _instance = NavigationRoute._init();
  static NavigationRoute get instance => _instance;
  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRouteConstants.DEFAULT:
        return _navigate(const SplasView(), AppRouteConstants.DEFAULT);
      case AppRouteConstants.HOME:
        return _navigate(const TestView(), AppRouteConstants.HOME);
      default:
        return _navigateToNotFound();
    }
  }

  MaterialPageRoute _navigate(Widget widget, String pageName) {
    return MaterialPageRoute(
      builder: (context) => widget,
      settings: RouteSettings(name: pageName),
    );
  }

  MaterialPageRoute _navigateToNotFound() {
    return MaterialPageRoute(
      builder: (context) => const Page404(),
    );
  }
}
