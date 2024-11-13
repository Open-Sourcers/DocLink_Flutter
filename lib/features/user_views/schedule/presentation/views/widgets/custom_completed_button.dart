import 'package:doc_link_project/core/common/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class CustomCompletedButton extends StatelessWidget {
  const CustomCompletedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      borderRadius: BorderRadius.circular(50),
      onPressed: () {},
      buttonTitle: "Remove",
      height: 40,
    );
  }
}
