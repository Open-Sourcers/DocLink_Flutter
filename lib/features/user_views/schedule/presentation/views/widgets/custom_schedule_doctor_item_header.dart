import 'package:doc_link_project/core/common/widgets/custom_circle_avatar_image.dart';
import 'package:doc_link_project/core/utils/app_colors.dart';
import 'package:doc_link_project/core/utils/styless.dart';
import 'package:flutter/material.dart';

class CustomScheduleDoctorItemHeader extends StatelessWidget {
  const CustomScheduleDoctorItemHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: const CustomCircleAvatarImage(radius: 24),
      title: Text(
        "Dr / Mahmoud",
        style: Styless.textBold18.copyWith(color: AppColors.black),
      ),
      subtitle: const Text("Pediatrician", style: Styless.textMedium14),
    );
  }
}
