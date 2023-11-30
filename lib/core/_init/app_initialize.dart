import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:logger/logger.dart';

@immutable
final class ApplicationInitialize {
  Future<void> make() async {
    await runZonedGuarded<Future<void>>(_init, (error, stack) {
      Logger().e(error);
    });
  }

  Future<void> _init() async {
    await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    FlutterError.onError = (details) {
      Logger().e(details.exceptionAsString());
    };
    await Hive.initFlutter();
  }
}
