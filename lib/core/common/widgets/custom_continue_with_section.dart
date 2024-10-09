import 'package:doc_link_project/constants.dart';
import 'package:doc_link_project/core/utils/styless.dart';
import 'package:doc_link_project/features/auth/presentation/views/widgets/custom_continue_with_button.dart';
import 'package:doc_link_project/generated/l10n.dart';
import 'package:flutter/material.dart';

class CustomContinueWithSection extends StatelessWidget {
  const CustomContinueWithSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          S.of(context).continueWith,
          textAlign: TextAlign.center,
          style: Styless.textBold14,
        ),
        const SizedBox(height: 20),
        Row(
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
        ),
      ],
    );
  }
}
