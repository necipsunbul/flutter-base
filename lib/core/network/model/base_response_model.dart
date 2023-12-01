import '../../model/base_error.dart';
import 'respone_model_interface.dart';

class BaseResponse<T> extends IResponse<T> {
  @override
  T? data;

  @override
  int? errorCode;

  @override
  int? statusCode;

  @override
  String? message;

  @override
  bool? success;

  @override
  BaseError? error;

  BaseResponse(
      {this.data,
      this.errorCode,
      this.statusCode,
      this.message,
      this.success,
      this.error});
}
