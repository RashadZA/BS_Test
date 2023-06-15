import 'package:bs_test/src/presentation/utils/design_utils.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

bool isNullEmptyOrFalse(dynamic o) {
  if (o is Map<String, dynamic> || o is List<dynamic>) {
    return o == null || o.length == 0;
  }
  return o == null || o == false || o == "";
}

String  getDefaultDateFormat(String formatDate){
  return DateFormat('MM-dd-yy hh:mm:ss a').format(DateTime.parse(formatDate));
}

extension WidgetExtension on Widget {
  List<BoxShadow> get containerShadow =>
      const [
        BoxShadow(
          blurRadius: 10,
          offset: Offset(0, 4),
          color: Color(0x0f00498a),
        ),
      ];
  Divider defaultDivider({double? thickness, Color? color, double? height}){
    return Divider(
        thickness: thickness ?? 1,
        color: color ?? AppColors.greyOpacity08,
        height: height ?? 20);
}
  Container defaultContainer({
    double hP = 10,
    double vP = 10,
    double vM = 0,
    double hM = 0,
    Color? backgroundColor,
    double borderRadius = defaultBorderRadius,
  }) =>
      Container(
        decoration: BoxDecoration(
          boxShadow: containerShadow,
          color: backgroundColor ?? AppColors.white,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        padding: EdgeInsets.symmetric(horizontal: hP, vertical: vP),
        margin: EdgeInsets.symmetric(horizontal: hM, vertical: vM),
        child: this,
      );

}