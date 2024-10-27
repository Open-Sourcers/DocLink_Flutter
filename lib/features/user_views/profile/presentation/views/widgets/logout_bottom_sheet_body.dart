import 'package:doc_link_project/core/common/widgets/custom_button.dart';
import 'package:doc_link_project/core/utils/app_colors.dart';
import 'package:doc_link_project/core/utils/app_router.dart';
import 'package:doc_link_project/core/utils/styless.dart';
import 'package:doc_link_project/features/auth/presentation/manager/cubits/auth_cubit.dart';
import 'package:doc_link_project/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class LogoutBottomSheetBody extends StatelessWidget {
  const LogoutBottomSheetBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(
            width: 60,
            child: Divider(thickness: 5, color: AppColors.black),
          ),
          const SizedBox(height: 25),
          Text(
            S.of(context).logOutMsg,
            style: Styless.textSemiBold20.copyWith(color: AppColors.black),
          ),
          const SizedBox(height: 25),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                Expanded(
                  child: CustomButton(
                    backgroundColor: AppColors.white,
                    textColor: AppColors.commonColor,
                    onPressed: () {
                      context.read<AuthCubit>().logout();
                      GoRouter.of(context)
                          .pushReplacement(AppRouter.onboarding);
                    },
                    buttonTitle: S.of(context).logOut,
                  ),
                ),
                const SizedBox(width: 15),
                Expanded(
                  child: CustomButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    buttonTitle: S.of(context).close,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 25),
        ],
      ),
    );
  }
}
