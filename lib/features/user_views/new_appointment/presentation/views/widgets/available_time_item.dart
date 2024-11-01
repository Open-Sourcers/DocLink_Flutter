import 'package:doc_link_project/core/utils/app_colors.dart';
import 'package:doc_link_project/core/utils/styless.dart';
import 'package:flutter/material.dart';

class AvailableTimeItem extends StatelessWidget {
  const AvailableTimeItem({
    super.key,
    required this.time,
    this.onTap,
    required this.isActive,
  });
  final String time;
  final Function()? onTap;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(microseconds: 300),
        padding: const EdgeInsets.all(4),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: isActive ? AppColors.commonColor : AppColors.grey100,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(width: 1, color: AppColors.grey200),
        ),
        child: Text(time,
            style: Styless.textRegular16
                .copyWith(color: isActive ? AppColors.white : AppColors.black)),
      ),
    );
  }
}
