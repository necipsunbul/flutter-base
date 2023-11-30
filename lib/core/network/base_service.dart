import 'package:dio/dio.dart';

import '../model/base_error.dart';
import 'interceptors/logging_interceptor.dart';
import 'model/base_response_model.dart';
import 'model/respone_model_interface.dart';
import 'network_manager.dart';

class BaseService {
  late final Dio _service;
  BaseService() {
    _service = NetworkManager.instance.service;
    NetworkManager.instance.addInterceptor(Logging());
  }

  Future<Response> get(String path) async {
    try {
      return await _service.get(path);
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  Future<Response> delete(String path) async {
    try {
      return await _service.delete(path);
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  Future<Response> post<FormData>(String path, FormData? data) async {
    try {
      return await _service.post(path, data: data);
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  Future<Response> put<FormData>(String path, FormData? data) async {
    try {
      return await _service.put(path, data: data);
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  Future<Response> patch<FormData>(String path, FormData? data) async {
    try {
      return await _service.patch(path, data: data);
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  IResponse<T> buildResponse<T>(
      {dynamic responseBody, int? statusCode, BaseError? error, T? data}) {
    try {
      return BaseResponse<T>(
        data: data,
        success: responseBody['success'],
        errorCode: responseBody['errorCode'],
        statusCode: statusCode,
        message: responseBody['message'],
        error: error,
      );
    } catch (e) {
      return BaseResponse(
        success: false,
        error: BaseError(
          message: e.toString(),
        ),
      );
    }
  }
}
