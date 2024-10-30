import 'package:doc_link_project/core/common/widgets/custom_circle_avatar_image.dart';
import 'package:doc_link_project/core/utils/app_colors.dart';
import 'package:doc_link_project/core/utils/styless.dart';
import 'package:flutter/material.dart';

class DoctorDetailsHeaderSecatin extends StatelessWidget {
  const DoctorDetailsHeaderSecatin({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomCircleAvatarImage(radius: 100),
        const SizedBox(height: 15),
        Text(
          "Dr/ Mahmoud",
          style: Styless.textBold18.copyWith(color: AppColors.black),
        ),
        const SizedBox(height: 5),
        const Text("..Specialty..", style: Styless.textRegular14),
        const SizedBox(height: 3),
      ],
    );
  }
}
