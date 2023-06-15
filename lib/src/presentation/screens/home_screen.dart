import 'package:bs_test/src/config/router/app_pages.dart';
import 'package:bs_test/src/presentation/components/circular_progress_indicator.dart';
import 'package:bs_test/src/presentation/screens/home_controller.dart';
import 'package:bs_test/src/presentation/utils/design_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends GetWidget<HomeController> {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.whiteOpacity08,
        appBar: AppBar(
          title: const Text("BS Test"),
        ),
        body: Obx(
          () => controller.isLoading.isTrue
              ? const Center(
                  child: DefaultCircularProgressIndicator(),
                )
              : SizedBox(
                  width: Get.width,
                  height: Get.height,
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: defaultAllPadding, right: defaultAllPadding),
                      child: Column(
                        children: [
                          SizedBox(
                            height:
                                CustomHW.getHeight(height: 1.5, padding: 0.0),
                          ),
                          for (int i = 0; i < 10; i++) ...[
                            RepoCart(index: i),
                            const SizedBox(
                              height: defaultAllPadding,
                            ),
                          ]
                        ],
                      ),
                    ),
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
          onTap: () {
            Get.toNamed(Routes.repoDetails, parameters: {"url": controller.repoList[index].url,})?.then((value) => controller.init());
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
