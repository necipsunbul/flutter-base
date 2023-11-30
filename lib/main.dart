import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'core/navigation/navigation_route.dart';
import 'core/notifiers/app_providers.dart';
import 'core/notifiers/change_theme_provider.dart';
import 'core/theme/app_dark_theme.dart';
import 'core/theme/app_light_theme.dart';

import 'core/_init/app_initialize.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ApplicationInitialize().make();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        ...AppProviders.instance.systemProviders,
      ],
      child: BlocBuilder<ChangeThemeCubit, ThemeMode>(
        builder: (context, themeMode) {
          return MaterialApp(
            title: 'Flutter Demo',
            debugShowCheckedModeBanner: false,
            theme: AppLightTheme().themeData,
            darkTheme: AppDarkTheme().themeData,
            onGenerateRoute: NavigationRoute.instance.onGenerateRoute,
            themeMode: themeMode,
            // home: const TestView(),
          );
        },
      ),
    );
  }
}
