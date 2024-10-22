import 'package:doc_link_project/core/utils/app_colors.dart';
import 'package:doc_link_project/core/utils/styless.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.onPressed,
    required this.buttonTitle,
    this.backgroundColor = AppColors.commonColor,
    this.textColor = AppColors.white,
    this.child,
    this.isCompleted = true,
  });
  final Function()? onPressed;
  final String buttonTitle;
  final Color textColor;
  final Widget? child;
  final bool isCompleted;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: isCompleted ? onPressed : null,
      color: backgroundColor,
      minWidth: MediaQuery.sizeOf(context).width,
      height: 60,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
          side: BorderSide(color: isCompleted ? textColor : AppColors.black)),
      child: child ??
          Text(
            buttonTitle,
            style: Styless.textSemiBold20
                .copyWith(color: isCompleted ? textColor : AppColors.black),
          ),
    );
  }
}
