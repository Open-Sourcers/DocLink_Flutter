import 'package:doc_link_project/constants.dart';
import 'package:doc_link_project/features/auth/presentation/views/widgets/custom_continue_with_button.dart';
import 'package:flutter/material.dart';

class CustomContinueWithSection extends StatelessWidget {
  const CustomContinueWithSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomContinueWithButton(
          icon: googleIcon,
          onPressed: () {},
        ),
        const SizedBox(width: 10),
        CustomContinueWithButton(
          icon: faceIcon,
          onPressed: () {},
        ),
      ],
    );
  }
}
