import 'package:bs_test/src/presentation/utils/design_utils.dart';
import 'package:flutter/material.dart';

class DefaultCircularProgressIndicator extends StatelessWidget {
  const DefaultCircularProgressIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultAllPadding),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius:
            const BorderRadius.all(Radius.circular(defaultBorderRadius)),
      ),
      width: 60,
      height: 60,
      child: Center(
        child: CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation<Color>(AppColors.blueAccent),
          backgroundColor: AppColors.white,
        ),
      ),
    );
  }
}
