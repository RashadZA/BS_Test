import 'package:bs_test/src/presentation/components/contants.dart';
import 'package:bs_test/src/presentation/utils/design_utils.dart';
import 'package:flutter/material.dart';

class Unknown404Screen extends StatelessWidget {
  const Unknown404Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryShadowColor,
      body: Center(
        child: Text(
          '404',
          style: TextThemeX.text18,
        ).defaultContainer(),
      ),
    );
  }
}