import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/single_child_widget.dart';

import 'change_theme_provider.dart';

class AppProviders {
  AppProviders._init();
  static AppProviders? _instance;
  static AppProviders get instance {
    _instance ??= AppProviders._init();
    return _instance!;
  }

  List<SingleChildWidget> systemProviders = [
    BlocProvider(create: (context) => ChangeThemeCubit())
  ];
}
