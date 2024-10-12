import 'package:doc_link_project/core/utils/app_router.dart';
import 'package:doc_link_project/core/utils/styless.dart';
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
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 5),
        alignment:Intl.getCurrentLocale() == 'ar' ?  Alignment.centerLeft:Alignment.centerRight,
        child: Text(
          S.of(context).forgetPassword,
          style: Styless.textBold14,
        ),
      ),
    );
  }
}
