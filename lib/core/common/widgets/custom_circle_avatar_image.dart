import 'package:doc_link_project/core/utils/app_colors.dart';
import 'package:doc_link_project/core/utils/app_images.dart';
import 'package:flutter/material.dart';

class CustomCircleAvatarImage extends StatelessWidget {
  const CustomCircleAvatarImage({
    super.key,
    required this.radius,
  });
  final double radius;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius * 1.075,
      backgroundColor: AppColors.grey,
      child: CircleAvatar(
        radius: radius,
        backgroundImage: const AssetImage(AppImages.imagesProfImg),
      ),
    );
  }
}
