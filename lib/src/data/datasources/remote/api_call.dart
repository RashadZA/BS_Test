import 'dart:async';

import 'package:bs_test/src/data/repositories/dio_helper/base_service.dart';
import 'package:bs_test/src/domain/models/repositories_model.dart';
import 'package:bs_test/src/domain/models/repository_model.dart';

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
  FutureOr<RepositoriesModel> getRepositoriesWithSort({required String sort}) async {
    return tryOrCatch<RepositoriesModel>(() async {
      final response = await dio.get(
          '/search/repositories?q=Flutter&sort=$sort'
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
  FutureOr<List<RepositoryModel>> getPagingRepositories({required int page, required int pageItems}) async {
    return tryOrCatch<List<RepositoryModel>>(() async {
      final response = await dio.get(
          '/search/repositories?q=Flutter&per_page=$pageItems&page=$page'
      );
      print("Data: ${response.data}");
      return List<RepositoryModel>.from(response.data['items'].map((x) => RepositoryModel.fromMap(x)));
    });
  }
  FutureOr<List<RepositoryModel>> getPagingRepositoriesWithSort({required int page, required int pageItems, required String sort}) async {
    return tryOrCatch<List<RepositoryModel>>(() async {
      final response = await dio.get(
          '/search/repositories?q=Flutter&sort=$sort&per_page=$pageItems&page=$page'
      );
      print("Data: ${response.data}");
      return List<RepositoryModel>.from(response.data['items'].map((x) => RepositoryModel.fromMap(x)));
    });
  }
}