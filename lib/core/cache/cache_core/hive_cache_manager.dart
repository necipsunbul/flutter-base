import 'package:hive_flutter/hive_flutter.dart';
/*
class HiveCacheManager {
  static HiveCacheManager? _instance;
  static HiveCacheManager get instance {
    _instance ??= HiveCacheManager._init();
    return _instance!;
  }

  HiveCacheManager._init();
}
*/

abstract class IHiveCacheManager<T> {
  final String boxKey;
  Box<T>? box;
  IHiveCacheManager(this.boxKey);
  void registerAdapters();

  Future<void> init() async {
    if (!(box?.isOpen ?? false)) {
      box = await Hive.openBox(boxKey);
    }
  }

  Future<void> clearAll() async {
    await box?.clear();
  }

  Future<void> addItems(List<T> items);
  Future<void> putItems(List<T> items);

  T? getItem(String key);
  List<T>? getValues();

  Future<void> putItem(String key, T item);
  Future<void> removeItem(String key);
}
