import 'dart:async';

import 'package:bs_test/src/data/repositories/dio_helper/base_service.dart';
import 'package:bs_test/src/domain/models/repositories_model.dart';
import 'package:bs_test/src/domain/models/repository_model.dart';
import 'package:dio/dio.dart';

class APICall with BaseService {
  void dispose() {}

  FutureOr<RepositoriesModel> getRepositories() async {
    return tryOrCatch<RepositoriesModel>(() async {
      final response = await dio.get(
        '/search/repositories?q=Flutter'
      );
      print("Data: ${response.data}");
      return RepositoriesModel.fromMap(response.data);
    });
  }
  FutureOr<RepositoryModel> getRepoDetails({required String repoID}) async {
    return tryOrCatch<RepositoryModel>(() async {
      final response = await dio.get(repoID);
      return RepositoryModel.fromMap(response.data);
    });
  }
}