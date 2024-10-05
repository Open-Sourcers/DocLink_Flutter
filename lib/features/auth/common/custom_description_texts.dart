import 'package:doc_link_project/constants.dart';
import 'package:doc_link_project/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CustomDescriptionTexts extends StatelessWidget {
  final String headerTxt;
  final String description;
  final double fontSize;
  const CustomDescriptionTexts({
    super.key,
    required this.headerTxt,
    required this.description,
    this.fontSize = 20,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          headerTxt,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 28,
            color: AppColors.commonColor,
            fontWeight: FontWeight.w900,
            fontFamily: spaceGrotesk,
          ),
        ),
        const SizedBox(height: 25),
        // Welcome back text
        Text(
          description,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: fontSize,
            fontWeight: FontWeight.bold,
            fontFamily: spaceGrotesk,
          ),
        ),
      ],
    );
  }
}
