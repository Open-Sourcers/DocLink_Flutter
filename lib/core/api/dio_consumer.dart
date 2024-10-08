import 'package:dio/dio.dart';
import 'package:doc_link_project/core/api/api_consumer.dart';
import 'package:doc_link_project/core/api/api_interceptor.dart';
import 'package:doc_link_project/core/api/end_points.dart';

class DioConsumer extends ApiConsumer {
  final Dio dio;

  DioConsumer({required this.dio}) {
    dio.options.baseUrl = EndPoints.baseUrl;
    dio.interceptors.add(ApiInterceptor()); // user define
    dio.interceptors.add(
      LogInterceptor(
        request: true,
        requestBody: true,
        requestHeader: true,
        responseBody: true,
        responseHeader: true,
        error: true,
      ),
    ); // build in
  }
  @override
  Future<dynamic> delete(
    String path, {
    dynamic data,
    Map<String, String>? queryParameters,
    isFormData = false,
  }) async {
    try {
      final response = await dio.delete(
        path,
        data: isFormData ? FormData.fromMap(data) : data,
        queryParameters: queryParameters,
      );
      return response.data;
    } on DioException catch (e) {
      throw e.toString();
      //handelDioException(e);
    }
  }

  @override
  Future<dynamic> get(
    String path, {
    dynamic data,
    Map<String, String>? queryParameters,
    isFormData = false,
  }) async {
    try {
      final response = await dio.get(
        path,
        data: isFormData ? FormData.fromMap(data) : data,
        queryParameters: queryParameters,
      );
      return response.data;
    } on DioException catch (e) {
      throw e.toString();
      //handelDioException(e);
    }
  }

  @override
  Future<dynamic> patch(
    String path, {
    dynamic data,
    Map<String, String>? queryParameters,
    isFormData = false,
  }) async {
    try {
      final response = await dio.patch(
        path,
        data: isFormData ? FormData.fromMap(data) : data,
        queryParameters: queryParameters,
      );
      return response.data;
    } on DioException catch (e) {
      throw e.toString();
      //handelDioException(e);
    }
  }

  @override
  Future<dynamic> post(
    String path, {
    dynamic data,
    Map<String, String>? queryParameters,
    isFormData = false,
  }) async {
    try {
      final response = await dio.post(
        path,
        data: isFormData ? FormData.fromMap(data) : data,
        queryParameters: queryParameters,
      );
      return response.data;
    } on DioException catch (e) {
      throw e.toString();
      //handelDioException(e);
    }
  }
}
