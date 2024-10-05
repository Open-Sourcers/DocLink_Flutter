import 'package:doc_link_project/constants.dart';
import 'package:doc_link_project/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String buttonTitle;
  final Function() onPressed;
  final bool isCompleted;
  const CustomButton({
    super.key,
    required this.buttonTitle,
    required this.onPressed,
    this.isCompleted = true,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: isCompleted ? onPressed : null,
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.commonColor,
        padding: const EdgeInsets.symmetric(vertical: 15),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
      child: Text(
        buttonTitle,
        style: const TextStyle(
          fontSize: 20,
          fontFamily: spaceGrotesk,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }
}
