import 'package:bs_test/src/presentation/components/contants.dart';
import 'package:bs_test/src/presentation/utils/app_assets.dart';
import 'package:bs_test/src/presentation/utils/design_utils.dart';
import 'package:bs_test/src/presentation/utils/select_image.dart';
import 'package:flutter/material.dart';

class UserAvatar extends StatelessWidget {
  const UserAvatar({
    Key? key,
    this.imageUrl,
    this.radius = 80,
    this.color,
  }) : super(key: key);

  final double radius;
  final String? imageUrl;
  final Color? color;

  @override
  Widget build(BuildContext context) {

    return Container(
      width: radius,
      height: radius,
      padding: const EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        color: color ?? AppColors.transparent,
        shape: BoxShape.circle,
      ),
      child: selectAPIImager(image: imageUrl),
    );
  }
}