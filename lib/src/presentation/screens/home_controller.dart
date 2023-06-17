import 'package:bs_test/src/data/datasources/local/gs_services.dart';
import 'package:bs_test/src/data/repositories/dio_helper/api_repositories.dart';
import 'package:bs_test/src/data/repositories/dio_helper/internet.dart';
import 'package:bs_test/src/data/repositories/local_db_helper/all_repositories_table.dart';
import 'package:bs_test/src/data/repositories/local_db_helper/repository.dart';
import 'package:bs_test/src/data/repositories/local_db_helper/repository_sort_by_star.dart';
import 'package:bs_test/src/data/repositories/local_db_helper/repository_sort_by_updated.dart';
import 'package:bs_test/src/domain/models/repositories_model.dart';
import 'package:bs_test/src/domain/models/repository_model.dart';
import 'package:bs_test/src/presentation/utils/design_utils.dart';
import 'package:get/get.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:permission_handler/permission_handler.dart';

class HomeController extends GetxController{
  final int pageItems = 10;
  final APIRepository apiRepository = Get.find<APIRepository>();
  RepositoriesModel repoMap = RepositoriesModel.fromMap({});
  RxList<RepositoryModel> repoList = <RepositoryModel>[].obs;
  final PagingController<int, RepositoryModel> pagingController = PagingController(firstPageKey: 0);
  RxBool internetStatus = false.obs;
  RxBool storagePermission = false.obs;
  RxString sortBy = "".obs;
  @override
  void onInit() {
    checkInternet();
    pagingController.addPageRequestListener((pageKey) {
      fetchPage(pageKey);
    });
    init();
    super.onInit();
  }
  Future<void> checkInternet() async {
    internetStatus.value = await Internet().isAvailable();
  }
  Future<void> init() async {
    sortBy.value = GSServices.sortType;
  }
  Future<void> fetchPage(int pageKey) async {
    try {
      // final  newItems;
      if(await Internet().isAvailable()){
        if(sortBy.value == updated || sortBy.value == stars){
          repoList.value = await apiRepository.getPagingRepositoriesWithSort(page: pageKey,pageItems: pageItems,sort: sortBy.value);

        }else{
          repoList.value = await apiRepository.getPagingRepositories(page: pageKey,pageItems: pageItems);
        }

      }else{
          repoList.value = await getDataFromTable(min: pageKey,max: pageKey+pageItems);
      }


      final isLastPage = repoList.length < pageItems;
      if (isLastPage) {
        pagingController.appendLastPage(repoList);
      } else {
        final nextPageKey = pageKey + repoList.length;
        pagingController.appendPage(repoList, nextPageKey);
      }
    } catch (error) {
      pagingController.error = error;
    }
  }

  Future<List<RepositoryModel>> getDataFromTable({required int min,required int max}) async {
    RxList repoListDB = [].obs;
    if(sortBy.value == stars){
      repoListDB.value = await RepoListSortByStarTable().getRepoSBSByPrimaryKeys(fromKey: min,toKey: max);
    }else if(sortBy.value == updated){
      repoListDB.value = await RepoListSortByUpdateTable().getRepoSBUByPrimaryKeys(fromKey: min,toKey: max);
    }else{
      repoListDB.value = await RepoListTable().getRepoByPrimaryKeys(fromKey: min,toKey: max);
    }
    // repoList.value = List<RepositoryModel>.from(repoListDB.map((x) => RepositoryModel.fromMap(x)));
    print("Repo List From DB: $repoListDB");
    return List<RepositoryModel>.from(repoListDB.map((x) => RepositoryModel.fromMap(x)));
  }

  Future<void> popUpMenuButtonOnSelected(String selectValue) async {
    if(sortBy.value == selectValue){
      sortBy.value = "";
      await GSServices.setSortType(type: "");
    }else{
      sortBy.value = selectValue;
      await GSServices.setSortType(type: selectValue);
    }
    pagingController.refresh();
  }


}