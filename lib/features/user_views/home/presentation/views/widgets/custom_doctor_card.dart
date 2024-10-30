import 'package:doc_link_project/core/utils/app_colors.dart';
import 'package:doc_link_project/core/utils/app_images.dart';
import 'package:doc_link_project/core/utils/styless.dart';
import 'package:flutter/material.dart';

class CustomDoctorCard extends StatelessWidget {
  const CustomDoctorCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: AppColors.grey100,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        children: [
          const Expanded(
            child: CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage(AppImages.imagesProfImg),
            ),
          ),
          Text(
            "Dr/ Mahmoud",
            style: Styless.textBold18.copyWith(color: AppColors.black),
          ),
          const SizedBox(height: 5),
          const Text(
            "Specialty",
            style: Styless.textRegular14,
          ),
          const SizedBox(height: 3),
          const Text(
            "⭐️ 4.5 (135 reviews)",
            style: Styless.textRegular14,
          ),
        ],
      ),
    );
  }
}
