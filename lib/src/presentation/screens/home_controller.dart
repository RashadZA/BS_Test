import 'package:bs_test/src/data/repositories/dio_helper/api_repositories.dart';
import 'package:bs_test/src/data/repositories/dio_helper/internet.dart';
import 'package:bs_test/src/domain/models/repositories_model.dart';
import 'package:bs_test/src/domain/models/repository_model.dart';
import 'package:get/get.dart';

class HomeController extends GetxController{
  final APIRepository apiRepository = Get.find<APIRepository>();
  RepositoriesModel repoMap = RepositoriesModel.fromMap({});
  RxList<RepositoryModel> repoList = <RepositoryModel>[].obs;
  RxBool isLoading = false.obs;
  RxBool internetStatus = false.obs;
  @override
  void onInit() {
    super.onInit();
    init();
  }
  Future<void> init() async {
    isLoading.value = true;
    internetStatus.value = await Internet().isAvailable();
    repoMap = await apiRepository.getRepositories();
    update();
    repoList.value = repoMap.items;
    isLoading.value = false;
  }



}