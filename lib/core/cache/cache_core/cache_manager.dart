import 'hive_cache_manager.dart';

class CacheManager<T> extends IHiveCacheManager<T> {
  CacheManager(String key) : super(key) {
    // init();
  }
  @override
  Future<void> addItems(List<T> items) async {
    await box?.addAll(items);
  }

  @override
  T? getItem(String key) {
    return box?.get(key);
  }

  @override
  List<T>? getValues() {
    return box?.values.toList();
  }

  @override
  Future<void> putItem(String key, T item) async {
    print(box == null ? 'close' : 'open');
    await box?.put(key, item);
  }

  @override
  Future<void> putItems(List items) async {
    //  await box?.putAll(Map.fromEntries(items.map((e) => MapEntry(uniquekey <--, e))));
  }

  @override
  Future<void> removeItem(String key) async {
    await box?.delete(key);
  }

  @override
  void registerAdapters() {
    /*
     if (!Hive.isAdapterRegistered(int --> value)) {
      Hive.registerAdapter(CustomAdapter());
    }
     */
  }
}
