import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/constants/app_route_contants.dart';
import '../../core/notifiers/change_theme_provider.dart';

class SplasView extends StatefulWidget {
  const SplasView({super.key});

  @override
  State<SplasView> createState() => _SplasViewState();
}

class _SplasViewState extends State<SplasView> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Future.wait([
        context.read<ChangeThemeCubit>().setDefaultTheme(),
      ]).then((List responses) {
        Navigator.pushReplacementNamed(context, AppRouteConstants.HOME);
      });
    });

    //Navigator.pushNamed(context, AppRouteConstants.HOME);
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: Text("Splash Scren")),
    );
  }
}
