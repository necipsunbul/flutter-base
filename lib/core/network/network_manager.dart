import 'package:dio/dio.dart';

import '../constants/api_constants.dart';

class NetworkManager {
  NetworkManager._init() {
    final baseOptions = BaseOptions(
      baseUrl: ApiContants.API_URL,
    );
    _dio = Dio(baseOptions);
  }
  static NetworkManager? _instance;
  static NetworkManager get instance {
    _instance ??= NetworkManager._init();
    return _instance!;
  }

  late final Dio _dio;
  Dio get service => _dio;

  Dio newDioInstance(BaseOptions options) {
    return Dio(options);
  }

  void addInterceptor(Interceptor interceptor) {
    _dio.interceptors.add(interceptor);
  }

  void addAttachHeader(String key, String value) {
    _dio.options.headers[key] = value;
  }
}
