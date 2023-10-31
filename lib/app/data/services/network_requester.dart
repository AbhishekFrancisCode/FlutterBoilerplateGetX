import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:uuid/uuid.dart';

import '../../../util/helper/exception_handler.dart';
import '../../../util/storage/storage_utils.dart';
import '../common/constants.dart';
import '../common/env.dart';

class NetworkRequester {
  late Dio _dio;

  NetworkRequester() {
    prepareRequest();
  }

  void prepareRequest() {
    BaseOptions dioOptions = BaseOptions(
      connectTimeout: Timeouts.CONNECT_TIMEOUT as Duration,
      receiveTimeout: Timeouts.RECEIVE_TIMEOUT as Duration,
      baseUrl: Env.baseURL,
      contentType: Headers.jsonContentType,
      responseType: ResponseType.json,
      headers: {'Accept': Headers.jsonContentType},
    );

    _dio = Dio(dioOptions);

    _dio.interceptors.clear();

    _dio.interceptors.add(LogInterceptor(
      error: true,
      request: true,
      requestBody: true,
      requestHeader: true,
      responseBody: true,
      responseHeader: true,
      logPrint: _printLog,
    ));
  }

  _printLog(Object object) => log(object.toString());
  dynamic getOptions(Options? requestOptions) {
    try {
      return Options(headers: {
        'X-DEVICE-ID': Storage.getDeviceId(),
        'X-REQUEST-ID': const Uuid().v4(),
        'X-APP-TYPE': "MOBILE_APP",
        'X-APP-VERSION': Storage.getAppver(),
        'Authorization': "",
      });
    } catch (e) {
      print(e);
    }
  }

  Future<dynamic> get(
      {required String path,
      Map<String, dynamic>? query,
      Options? requestOptions}) async {
    try {
      final response = await _dio.get(path,
          queryParameters: query, options: getOptions(requestOptions));
      return response.data;
    } on Exception catch (exception) {
      return ExceptionHandler.handleError(exception);
    }
  }

  Future<dynamic> post(
      {required String path,
      Map<String, dynamic>? query,
      Map<String, dynamic>? data,
      Options? requestOptions}) async {
    try {
      final response = await _dio.post(path,
          queryParameters: query,
          data: data,
          options: getOptions(requestOptions));
      return response.data;
    } on Exception catch (error) {
      return ExceptionHandler.handleError(error);
    }
  }

  Future<dynamic> put(
      {required String path,
      Map<String, dynamic>? query,
      Map<String, dynamic>? data,
      Options? requestOptions}) async {
    try {
      final response = await _dio.put(path,
          queryParameters: query,
          data: data,
          options: getOptions(requestOptions));
      return response.data;
    } on Exception catch (error) {
      return ExceptionHandler.handleError(error);
    }
  }

  Future<dynamic> putFile(
      {required String path,
      Map<String, dynamic>? query,
      dynamic data,
      Options? requestOptions}) async {
    try {
      var uploadDio = Dio();
      uploadDio.interceptors.add(LogInterceptor(
        error: true,
        request: true,
        requestBody: true,
        requestHeader: true,
        responseBody: true,
        responseHeader: true,
        logPrint: _printLog,
      ));
      final response = await uploadDio.put(path,
          queryParameters: query,
          data: data,
          options: getOptions(requestOptions));
      return response.data;
    } on Exception catch (error) {
      return ExceptionHandler.handleError(error);
    }
  }

  Future<dynamic> postFile(
      {required String path,
      Map<String, dynamic>? query,
      dynamic data,
      Options? requestOptions}) async {
    try {
      var uploadDio = Dio();
      uploadDio.interceptors.add(LogInterceptor(
        error: true,
        request: true,
        requestBody: true,
        requestHeader: true,
        responseBody: true,
        responseHeader: true,
        logPrint: _printLog,
      ));
      final response = await uploadDio.post(path,
          queryParameters: query,
          data: data,
          options: getOptions(requestOptions));
      return response.data;
    } on Exception catch (error) {
      return ExceptionHandler.handleError(error);
    }
  }

  Future<dynamic> patch(
      {required String path,
      Map<String, dynamic>? query,
      Map<String, dynamic>? data,
      Options? requestOptions}) async {
    try {
      final response = await _dio.patch(path,
          queryParameters: query,
          data: data,
          options: getOptions(requestOptions));
      return response.data;
    } on Exception catch (error) {
      return ExceptionHandler.handleError(error);
    }
  }

  Future<dynamic> delete(
      {required String path,
      Map<String, dynamic>? query,
      Map<String, dynamic>? data,
      Options? requestOptions}) async {
    try {
      final response = await _dio.delete(path,
          queryParameters: query, data: data, options: requestOptions);
      return response.data;
    } on Exception catch (error) {
      return ExceptionHandler.handleError(error);
    }
  }
}
