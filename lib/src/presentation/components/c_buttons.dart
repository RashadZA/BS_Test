import 'package:bs_test/src/presentation/utils/design_utils.dart';
import 'package:flutter/material.dart';

// Widget customIconButton({double? iconSize, IconData? icon, Color? iconColor, double? paddingForAll}) {
//   return IconButton(
//     padding: EdgeInsets.all(paddingForAll ?? 0.0),
//       onPressed: (){},
//       icon: Icon(
//         icon ?? Icons.arrow_back,
//         size: iconSize ?? defaultIconSize,
//         color: iconColor ?? AppColors.black,
//       )
//   );
// }
Widget customIconButton({
  double? iconSize,
  IconData? icon,
  Color? iconColor,
  double? paddingForAll,
  required Function function,
  Color? buttonBackGroundColor,
  double? buttonWidth,
  double? buttonHeight,
  Color? buttonSplashColor,
  double? buttonBorderRadious
}) {
  return ClipRRect(
    borderRadius: BorderRadius.all(Radius.circular(buttonBorderRadious ?? defaultBorderRadius)),
    child: Material(
      color: buttonBackGroundColor ?? AppColors.greyOpacity08,
      child: InkWell(
        onTap: () => function(),
        splashColor: buttonSplashColor ?? AppColors.blueAccent,
        child: Container(
            width: buttonWidth ?? defaultIconButtonWidth,
            height: buttonHeight ?? defaultIconButtonHeight,
            padding: EdgeInsets.all(paddingForAll ?? defaultIconButtonAllPadding),
            decoration: BoxDecoration(
              color: AppColors.transparent,
              borderRadius: BorderRadius.all(Radius.circular(buttonBorderRadious ?? defaultBorderRadius))
            ),
            child: Center(
              child: Icon(
                icon ?? Icons.arrow_back,
                size: iconSize ?? defaultIconSize,
                color: iconColor ?? AppColors.black,
              ),
            )),
      ),
    ),
  );
}
