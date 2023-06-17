import 'package:bs_test/src/data/repositories/dio_helper/api_repositories.dart';
import 'package:bs_test/src/data/repositories/dio_helper/internet.dart';
import 'package:bs_test/src/presentation/components/circular_progress_indicator.dart';
import 'package:bs_test/src/presentation/components/contants.dart';
import 'package:bs_test/src/presentation/screens/start_up/splash_screen_controller.dart';
import 'package:bs_test/src/presentation/utils/design_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends GetWidget<SplashScreenController> {
  const SplashScreen({super.key});



  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.primaryShadowColor,
        body: SizedBox(
          width: Get.width,
          height: Get.height,
          child: Center(
            child: const DefaultCircularProgressIndicator().defaultContainer(),
          ),
        ),
      ),
    );
  }
}
