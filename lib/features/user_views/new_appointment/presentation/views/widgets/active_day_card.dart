import 'package:doc_link_project/core/utils/app_colors.dart';
import 'package:doc_link_project/core/utils/styless.dart';
import 'package:flutter/material.dart';

class ActiveDayCard extends StatelessWidget {
  const ActiveDayCard({
    super.key,
    required this.day,
    required this.month,
    this.onTap,
  });
  final int day;
  final String month;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(microseconds: 300),
        height: 120,
        width: 90,
        margin: const EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
          color: AppColors.commonColor,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(width: 1, color: AppColors.grey200),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              day.toString(),
              style: Styless.textSemiBold15.copyWith(color: AppColors.white),
            ),
            Text(
              month,
              style: Styless.textSemiBold15.copyWith(color: AppColors.white),
            ),
          ],
        ),
      ),
    );
  }
}
