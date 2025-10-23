import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioClient {
  final Dio dio;

  DioClient._(this.dio);

  factory DioClient({
    required String baseUrl,
    Map<String, dynamic>? defaultHeaders,
    Duration connectTimeout = const Duration(seconds: 60),
    Duration receiveTimeout = const Duration(seconds: 60),
  }) {
    final dio = Dio(
      BaseOptions(
        baseUrl: baseUrl,
        connectTimeout: connectTimeout,
        receiveTimeout: receiveTimeout,
      ),
    );

    dio.interceptors.add(
      PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseHeader: false,
        responseBody: true,
        error: true,
        compact: true,
        maxWidth: 90,
      ),
    );
    return DioClient._(dio);
  }
}
