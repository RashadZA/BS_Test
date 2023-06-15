import 'dart:async';

import 'package:bs_test/src/data/datasources/remote/api_call.dart';
import 'package:bs_test/src/domain/models/repositories_model.dart';
import 'package:bs_test/src/domain/models/repository_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'base_service.dart';

class APIRepository {
  final APICall apiCall = Get.find<APICall>();

  void dispose() {
    apiCall.dispose();
  }

  Future<RepositoriesModel> getRepositories() async {
    try {
      return await apiCall.getRepositories();
    } catch (e) {
      debugPrint(e.toString());
    }
    return RepositoriesModel.fromMap({});
  }

  FutureOr<RepositoryModel> getRepoDetails({
    required String repoID,
  }) async {
    try {
      return await apiCall.getRepoDetails(repoID: repoID);
    } on ApiException catch (e) {
      debugPrint(e.toString());
    }
    return RepositoryModel.fromMap({});
  }
}
