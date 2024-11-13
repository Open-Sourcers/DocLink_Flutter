import 'package:doc_link_project/core/utils/app_colors.dart';
import 'package:doc_link_project/core/utils/styless.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.onPressed,
      required this.buttonTitle,
      this.backgroundColor = AppColors.commonColor,
      this.textColor = AppColors.white,
      this.child,
      this.isCompleted = true,
      this.borderRadius,
      this.height = 60});
  final Function()? onPressed;
  final String buttonTitle;
  final Color textColor;
  final Widget? child;
  final bool isCompleted;
  final Color backgroundColor;
  final BorderRadiusGeometry? borderRadius;
  final double height;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: isCompleted ? onPressed : null,
      color: backgroundColor,
      minWidth: MediaQuery.sizeOf(context).width,
      height: height,
      shape: RoundedRectangleBorder(
        borderRadius: borderRadius ?? BorderRadius.circular(12.0),
      ),
      child: child ??
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              buttonTitle,
              style: Styless.textSemiBold20
                  .copyWith(color: isCompleted ? textColor : AppColors.black),
            ),
          ),
    );
  }
}
