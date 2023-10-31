import 'package:dio/dio.dart';
import 'package:get/get.dart';

import '../../app/data/common/strings.dart';
import '../../app/data/models/response/error_response.dart';

// Custom Exception class to store error responses from remote API calls
class APIException implements Exception {
  //final String message;
  //bool? success;
  int? code;
  dynamic errors;

  APIException({
    // required this.message,
    // his.success,
    this.code,
    this.errors,
  });
}

class ExceptionHandler {
  ExceptionHandler._privateConstructor();

  static APIException handleError(Exception error) {
    if (error is DioException) {
      switch (error.type) {
        case DioExceptionType.sendTimeout:
          return APIException(errors: ErrorMessages.noInternet);
        case DioExceptionType.connectionTimeout:
          return APIException(errors: ErrorMessages.connectionTimeout);
        case DioExceptionType.badResponse:
          if ((error.response?.statusCode ?? 0) >= 500) {
            return APIException(
              errors: ErrorMessages.serverError,
              //  success: false,
              code: error.response?.statusCode,
            );
          }
          var res = ErrorResponse.fromJson(error.response?.data);
          return APIException(
            errors: res.errors,
            // success: res.success,
            code: res.code,
            //  errors: res.message
          );
        default:
          return APIException(errors: ErrorMessages.networkGeneral);
      }
    } else {
      return APIException(errors: ErrorMessages.networkGeneral);
    }
  }
}

class HandleError {
  HandleError._privateConstructor();

  static handleError(APIException? error) {
    Get.rawSnackbar(message: error?.errors ?? ErrorMessages.networkGeneral);
  }
}
