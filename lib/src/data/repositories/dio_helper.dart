import 'dart:io';

import 'package:bs_test/src/data/repositories/api_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class DioX {
  DioX._();
  factory DioX() => _internal;
  static final DioX _internal = DioX._();

  Dio _dio(String baseUrl) => Dio(
    BaseOptions(
      baseUrl: baseUrl,
      contentType: ContentType.json.mimeType,
    ),
  );

  Dio getDio(String baseUrl) {
    final interceptors = [
      ApiInterceptor(),
      if (!kReleaseMode) LoggingInterceptor()
    ];

    return _dio(baseUrl)..interceptors.addAll(interceptors);
  }
}