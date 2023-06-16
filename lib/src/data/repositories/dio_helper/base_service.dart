import 'package:bs_test/src/data/repositories/dio_helper/helper.dart';
import 'package:bs_test/src/presentation/utils/design_utils.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

part 'api_exceptions.dart';

mixin BaseService {
  final Dio dio = DioX().getDio(baseUrl);

  final Map<String, dynamic> requiresToken = {"requiresToken": false};

  Future<T> tryOrCatch<T>(Future<T> Function() methodToRun) async {
    try {
      return await methodToRun();
    } on ApiException {
      rethrow;
    } on DioException catch (err) {
      throw ApiException(getErrorMessageForDioErrors(err), 'Dio Error: ');
    } catch (e, trace) {
      debugPrint("$e\n$trace");
      throw ApiException("Internal Error occured, please try again later ! 😭", "Default Exception: ");
    }
  }
}