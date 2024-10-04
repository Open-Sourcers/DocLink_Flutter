import 'package:doc_link_project/constants.dart';
import 'package:doc_link_project/core/utils/app_colors.dart';
import 'package:doc_link_project/core/utils/app_router.dart';
import 'package:doc_link_project/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

class ForgetPasswordButton extends StatelessWidget {
  const ForgetPasswordButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.forgetPasswordView);
      },
      child: Text(
        S.of(context).forgetPassword,
        textAlign:
            Intl.getCurrentLocale() == 'ar' ? TextAlign.left : TextAlign.right,
        style: const TextStyle(
          fontSize: 14,
          fontFamily: spaceGrotesk,
          fontWeight: FontWeight.bold,
          color: AppColors.commonColor,
        ),
      ),
    );
  }
}
