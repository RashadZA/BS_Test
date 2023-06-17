import 'package:bs_test/src/presentation/components/c_buttons.dart';
import 'package:bs_test/src/presentation/components/circular_progress_indicator.dart';
import 'package:bs_test/src/presentation/components/contants.dart';
import 'package:bs_test/src/presentation/components/user_avatar.dart';
import 'package:bs_test/src/presentation/screens/repo_details_controller.dart';
import 'package:bs_test/src/presentation/utils/design_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RepoDetailsScreen extends GetWidget<RepoDetailsController> {
  const RepoDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        width: Get.width,
        height: Get.height,
        color: AppColors.whiteOpacity08,
        child: Obx(
          () => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: appBarHeight,
                width: Get.width,
                decoration: BoxDecoration(
                    color: AppColors.greyOpacity08,
                  boxShadow: [
                    BoxShadow(
                        color: AppColors.whiteOpacity04,
                      blurRadius: 2
                    )
                  ]
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    customIconButton(function: () {
                      Get.back();
                    }),
                    Container(
                        height: appBarHeight,
                        alignment: Alignment.centerLeft,
                        width: CustomHW.getWidthWithoutPaddingAndValue(
                            width: defaultIconButtonWidth, padding: 0.0),
                        padding: const EdgeInsets.only(
                            left: defaultLeftRightPadding),
                        child: Text(
                          controller.repositoryModel.name,
                          style: TextThemeX.text18
                              .copyWith(fontWeight: FontWeight.bold),
                        ))
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  color: AppColors.greyOpacity04,
                  child: controller.isLoading.isTrue
                      ? const Center(
                          child: DefaultCircularProgressIndicator(),
                        )
                      : SingleChildScrollView(
                        child: Container(
                            width: Get.width,
                            // color: AppColors.white60,
                            padding: const EdgeInsets.all(defaultAllPadding),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: Get.width,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      UserAvatar(
                                        imageUrl: controller
                                            .repositoryModel.owner.avatarUrl,
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        controller.repositoryModel.name,
                                        style: TextThemeX.text18,
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        controller.repositoryModel.fullName,
                                        style: TextThemeX.text18,
                                      ),
                                    ],
                                  ).defaultContainer(),
                                ),
                                const SizedBox(
                                  height: defaultAllPadding,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Description",
                                      style: TextThemeX.text18.copyWith(
                                          color: AppColors.greyOpacity08),
                                    ),
                                    const SizedBox(
                                      height: 2,
                                    ),
                                    Text(
                                      controller.repositoryModel.description,
                                      style: TextThemeX.text18.copyWith(
                                          overflow: TextOverflow.visible),
                                    ),
                                    defaultDivider(),
                                    Text(
                                      "Topics",
                                      style: TextThemeX.text18.copyWith(
                                          color: AppColors.greyOpacity08),
                                    ),
                                    const SizedBox(
                                      height: 2,
                                    ),
                                    Text(
                                      controller.repositoryModel.topics.join(", "),
                                      style: TextThemeX.text18.copyWith(
                                          overflow: TextOverflow.visible),
                                    ),
                                    defaultDivider(),
                                    Text(
                                      "Created At",
                                      style: TextThemeX.text18.copyWith(
                                          color: AppColors.greyOpacity08),
                                    ),
                                    const SizedBox(
                                      height: 2,
                                    ),
                                    Text(
                                      getDefaultDateFormat(controller.repositoryModel.createdAt),
                                      style: TextThemeX.text18.copyWith(
                                          overflow: TextOverflow.visible),
                                    ),
                                    defaultDivider(),
                                    Text(
                                      "Last Updated At",
                                      style: TextThemeX.text18.copyWith(
                                          color: AppColors.greyOpacity08),
                                    ),
                                    const SizedBox(
                                      height: 2,
                                    ),
                                    Text(
                                      getDefaultDateFormat(controller.repositoryModel.updatedAt),
                                      style: TextThemeX.text18.copyWith(
                                          overflow: TextOverflow.visible),
                                    ),
                                    defaultDivider(),
                                    Text(
                                      getDefaultDateFormat(controller.repositoryModel.createdAt),
                                      style: TextThemeX.text18.copyWith(
                                          overflow: TextOverflow.visible),
                                    ),
                                    defaultDivider(),
                                    Text(
                                      "Pushed At",
                                      style: TextThemeX.text18.copyWith(
                                          color: AppColors.greyOpacity08),
                                    ),
                                    const SizedBox(
                                      height: 2,
                                    ),
                                    Text(
                                      getDefaultDateFormat(controller.repositoryModel.pushedAt),
                                      style: TextThemeX.text18.copyWith(
                                          overflow: TextOverflow.visible),
                                    ),
                                  ],
                                ).defaultContainer(),
                                const SizedBox(
                                  height: 30,
                                ),
                              ],
                            ),
                          ),
                      ),
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
