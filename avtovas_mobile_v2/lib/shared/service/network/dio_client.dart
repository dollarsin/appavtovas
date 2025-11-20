import 'package:dio/dio.dart';

class DioClient {
  // Constructor with interceptors and BaseOptions
  DioClient({required Dio dio, List<Interceptor> interceptors = const []})
    : _dio = dio {
    if (interceptors.isNotEmpty) {
      _dio.interceptors.addAll(interceptors);
    }
  }

  // Add Dio instance
  final Dio _dio;

  // Example method for GET request
  Future<Response<Data>> get<Data>(
    String url, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final response = await _dio.get<Data>(
        url,
        data: data,
        queryParameters: queryParameters,
        cancelToken: cancelToken,
        options: options,
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }

  // Example method for POST request
  Future<Response<Data>> post<Data>(
    String url, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final response = await _dio.post<Data>(
        url,
        data: data,
        queryParameters: queryParameters,
        cancelToken: cancelToken,
        options: options,
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }

  // Example method for PUT request
  Future<Response<Data>> put<Data>(
    String url, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final response = await _dio.put<Data>(
        url,
        data: data,
        queryParameters: queryParameters,
        cancelToken: cancelToken,
        options: options,
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }

  // Example method for DELETE request
  Future<Response<Data>> delete<Data>(
    String url, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final response = await _dio.delete<Data>(
        url,
        data: data,
        queryParameters: queryParameters,
        cancelToken: cancelToken,
        options: options,
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }
}
