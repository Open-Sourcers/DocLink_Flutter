import 'package:doc_link_project/core/utils/app_colors.dart';
import 'package:doc_link_project/core/utils/styless.dart';
import 'package:flutter/material.dart';

class CustomDescriptionTexts extends StatelessWidget {
  final String headerTxt;
  final String description;
  const CustomDescriptionTexts({
    super.key,
    required this.headerTxt,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          headerTxt,
          textAlign: TextAlign.center,
          style: Styless.textBold30,
        ),
        const SizedBox(height: 25),
        // Welcome back text
        Text(
          description,
          textAlign: TextAlign.center,
          style: Styless.textSemiBold20.copyWith(
            color: AppColors.black,
          ),
        ),
      ],
    );
  }
}
