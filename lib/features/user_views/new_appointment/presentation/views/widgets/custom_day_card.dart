import 'package:doc_link_project/core/utils/app_colors.dart';
import 'package:doc_link_project/core/utils/styless.dart';
import 'package:flutter/material.dart';

class CustomDayCard extends StatelessWidget {
  const CustomDayCard({
    super.key,
    required this.day,
    required this.month,
    this.onTap,
    required this.isActive,
  });
  final int day;
  final String month;
  final Function()? onTap;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 0.9,
      child: GestureDetector(
        onTap: onTap,
        child: AnimatedContainer(
          duration: const Duration(microseconds: 300),
          decoration: BoxDecoration(
            color: isActive ? AppColors.grey100 : AppColors.commonColor,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(width: 1, color: AppColors.grey200),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                day.toString(),
                style: Styless.textBold25.copyWith(
                  color: isActive ? AppColors.black : AppColors.white,
                ),
              ),
              Text(
                month,
                style: Styless.textSemiBold15.copyWith(
                  color: isActive ? AppColors.black : AppColors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
