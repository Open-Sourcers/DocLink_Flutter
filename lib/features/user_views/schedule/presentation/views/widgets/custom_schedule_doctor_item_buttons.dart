import 'package:doc_link_project/core/common/widgets/custom_button.dart';
import 'package:doc_link_project/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CustomScheduleDoctorItemButtons extends StatelessWidget {
  const CustomScheduleDoctorItemButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
              borderRadius: BorderRadius.circular(50),
              backgroundColor: AppColors.white,
              textColor: AppColors.commonColor,
              onPressed: () {},
              buttonTitle: "Cancel",
            ),
          ),
          const SizedBox(width: 15),
          Expanded(
            child: CustomButton(
              borderRadius: BorderRadius.circular(50),
              onPressed: () {},
              buttonTitle: "Rescheduale",
            ),
          ),
        ],
      ),
    );
  }
}
