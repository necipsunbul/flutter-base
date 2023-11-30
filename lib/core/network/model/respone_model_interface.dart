import '../../model/base_error.dart';

abstract class IResponse<T> {
  abstract bool? success;
  abstract String? message;
  abstract int? errorCode;
  abstract int? statusCode;
  abstract T? data;
  abstract BaseError? error;
}
