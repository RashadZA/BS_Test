import 'package:bs_test/src/config/router/app_pages.dart';
import 'package:bs_test/src/domain/models/repository_model.dart';
import 'package:bs_test/src/presentation/screens/home_controller.dart';
import 'package:bs_test/src/presentation/utils/design_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class HomeScreen extends GetWidget<HomeController> {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.whiteOpacity08,
        appBar: AppBar(
          title: const Text("BS Test"),
          actions: [
            PopupMenuButton(
              onSelected: (String value) => controller.popUpMenuButtonOnSelected(value),
              itemBuilder: (BuildContext context) {
                return  [
                  PopupMenuItem(
                    value: stars,
                    child: Text("Sort by Star",style: TextThemeX.text16.copyWith(color: controller.sortBy.value == stars ? AppColors.blueAccent : AppColors.black),),
                  ),
                  PopupMenuItem(
                    value: updated,
                    child: Text("Sort by Updated",style: TextThemeX.text16.copyWith(color: controller.sortBy.value == updated ? AppColors.blueAccent : AppColors.black),),
                  )
                ];
              },
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: defaultAllPadding ),
          child: RefreshIndicator(
            onRefresh: () =>Future.sync(() => controller.pagingController.refresh(),),
            child: PagedListView<int, RepositoryModel>.separated(
              pagingController: controller.pagingController,
              builderDelegate: PagedChildBuilderDelegate<RepositoryModel>(
                animateTransitions: true,
                itemBuilder: (context, item, index) => Padding(
                  padding: const EdgeInsets.only(left: defaultAllPadding, right: defaultAllPadding,bottom: defaultAllPadding ),
                  child: RepoPagingCart(repo: item),
                ),
              ),
              separatorBuilder: (context, index) => Container(),
            ),
          ),
        ),
      ),
    );
  }
}

class RepoCart extends GetWidget<HomeController> {
  final int index;
  const RepoCart({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius:
          const BorderRadius.all(Radius.circular(defaultBorderRadius)),
      child: Material(
        color: AppColors.white,
        child: InkWell(
          onTap: () => Get.toNamed(Routes.repoDetails, parameters: {"url": controller.repoList[index].url,}),
          splashColor: Colors.blueAccent,
          child: Container(
            padding: const EdgeInsets.all(defaultAllPadding),
            decoration: const BoxDecoration(
              color: Colors.transparent,
              borderRadius:
                  BorderRadius.all(Radius.circular(defaultBorderRadius)),
            ),
            width: CustomHW.getWidth(width: 100),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 55,
                      child: Text("ID: ",
                          style:
                              TextThemeX.text16.copyWith(color: Colors.grey)),
                    ),
                    SizedBox(
                      width: CustomHW.getWidthWithoutPaddingAndValue(
                          width: 55 + defaultLeftRightPadding),
                      child: Text("${controller.repoList[index].id}",
                          style: TextThemeX.text16),
                    ),
                  ],
                ),
                SizedBox(
                  height: CustomHW.getHeight(height: 0.50),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 55,
                      child: Text("Name: ",
                          style:
                              TextThemeX.text16.copyWith(color: Colors.grey)),
                    ),
                    SizedBox(
                      width: CustomHW.getWidthWithoutPaddingAndValue(
                          width: 55 + defaultLeftRightPadding),
                      child: Text(controller.repoList[index].name,
                          style: TextThemeX.text16),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
class RepoPagingCart extends StatelessWidget {
  final RepositoryModel repo;
  const RepoPagingCart({Key? key, required this.repo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius:
      const BorderRadius.all(Radius.circular(defaultBorderRadius)),
      child: Material(
        color: AppColors.white,
        child: InkWell(
          onTap: () {
            Get.toNamed(Routes.repoDetails, parameters: {"url": repo.url,});
          },
          splashColor: Colors.blueAccent,
          child: Container(
            padding: const EdgeInsets.all(defaultAllPadding),
            decoration: const BoxDecoration(
              color: Colors.transparent,
              borderRadius:
              BorderRadius.all(Radius.circular(defaultBorderRadius)),
            ),
            width: CustomHW.getWidth(width: 100),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 55,
                      child: Text("ID: ",
                          style:
                          TextThemeX.text16.copyWith(color: Colors.grey)),
                    ),
                    SizedBox(
                      width: CustomHW.getWidthWithoutPaddingAndValue(
                          width: 55 + defaultLeftRightPadding),
                      child: Text("${repo.id}",
                          style: TextThemeX.text16),
                    ),
                  ],
                ),
                SizedBox(
                  height: CustomHW.getHeight(height: 0.50),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 55,
                      child: Text("Name: ",
                          style:
                          TextThemeX.text16.copyWith(color: Colors.grey)),
                    ),
                    SizedBox(
                      width: CustomHW.getWidthWithoutPaddingAndValue(
                          width: 55 + defaultLeftRightPadding),
                      child: Text(repo.name,
                          style: TextThemeX.text16),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
