import 'package:doc_link_project/core/common/widgets/custom_button.dart';
import 'package:doc_link_project/core/common/widgets/custom_loading_icon.dart';
import 'package:doc_link_project/core/utils/app_router.dart';
import 'package:doc_link_project/core/utils/function/custom_toast_message.dart';
import 'package:doc_link_project/features/auth/presentation/manager/cubits/forget_password_cubit.dart';
import 'package:doc_link_project/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class CustomResetPasswordButtonBlocConsumer extends StatelessWidget {
  const CustomResetPasswordButtonBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ForgetPasswordCubit, ForgetPasswordState>(
      listener: (context, state) {
        if (state is ResetPasswordFailure) {
          customBottomToastMessage(context,
              msg: state.errorMessage, type: ToastMessageType.error);
        } else if (state is ResetPasswordSuccess) {
          GoRouter.of(context).pushReplacement(AppRouter.customSuccessView);
        }
      },
      builder: (context, state) {
        return state is ResetPasswordLoading
            ? const CustomLoadingIcon()
            : CustomButton(
                buttonTitle: S.of(context).resetPass,
                onPressed: () {
                  if (context.read<ForgetPasswordCubit>().newPassword.text !=
                      context
                          .read<ForgetPasswordCubit>()
                          .passwordComfirmation
                          .text) {
                    customBottomToastMessage(context,
                        msg: S.of(context).passwordEqualConfirmPass,
                        type: ToastMessageType.error);
                  } else if (context
                      .read<ForgetPasswordCubit>()
                      .resetPasswordFormKey
                      .currentState!
                      .validate()) {
                    context.read<ForgetPasswordCubit>().resetPassword(context);
                  }
                },
              );
      },
    );
  }
}
