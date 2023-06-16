import 'package:bs_test/src/data/repositories/dio_helper/api_repositories.dart';
import 'package:bs_test/src/domain/models/repository_model.dart';
import 'package:bs_test/src/presentation/utils/design_utils.dart';
import 'package:get/get.dart';

class RepoDetailsController extends GetxController{
  final APIRepository apiRepository = Get.find<APIRepository>();
  RxBool isLoading = false.obs;
  RxString repoDetailsUrl = "".obs;
  RepositoryModel repositoryModel = RepositoryModel.fromMap({});
  @override
  void onInit() {
    super.onInit();
    init();
  }
  Future<void> init() async {
    isLoading.value = true;
    repoDetailsUrl.value = Get.parameters['url'] ?? "";
    print("repoDetailsUrl: ${repoDetailsUrl.split(baseUrl)}");
    repositoryModel = await apiRepository.getRepoDetails(repoID: repoDetailsUrl.split(baseUrl).last);
    update();
    isLoading.value = false;
  }
}