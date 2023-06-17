import 'package:bs_test/src/data/datasources/local/gs_services.dart';
import 'package:bs_test/src/data/repositories/dio_helper/api_repositories.dart';
import 'package:bs_test/src/data/repositories/dio_helper/internet.dart';
import 'package:bs_test/src/data/repositories/local_db_helper/repository.dart';
import 'package:bs_test/src/data/repositories/local_db_helper/repository_sort_by_star.dart';
import 'package:bs_test/src/data/repositories/local_db_helper/repository_sort_by_updated.dart';
import 'package:bs_test/src/domain/models/repository_model.dart';
import 'package:bs_test/src/presentation/utils/design_utils.dart';
import 'package:get/get.dart';

class RepoDetailsController extends GetxController{
  final APIRepository apiRepository = Get.find<APIRepository>();
  RxBool isLoading = false.obs;
  RxString repoDetailsUrl = "".obs;
  RxString repoSortedAs = "".obs;
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
    repoSortedAs.value = GSServices.sortType;
    if(await Internet().isAvailable()){
      await getDataFromAPI();
    }else{
      await getDataFromDB();
    }
    isLoading.value = false;
  }
  Future<void> getDataFromAPI() async {
    repositoryModel = await apiRepository.getRepoDetails(repoID: repoDetailsUrl.split(baseUrl).last);
    update();
  }
  Future<void> getDataFromDB() async {
    RxMap<String, dynamic> repository = <String, dynamic>{}.obs;
    if(repoSortedAs.value == stars){
      repository.value = await RepoListSortByStarTable().getRepoSBSByURL(repoDetailsUrl.value);
    }else if(repoSortedAs.value == updated){
      repository.value = await RepoListSortByUpdateTable().getRepoSBUByURL(repoDetailsUrl.value);
    }else{
      repository.value = await RepoListTable().getRepoByURL(repoDetailsUrl.value);
    }
    repositoryModel = RepositoryModel.fromMap(repository);
    update();

  }
  
}