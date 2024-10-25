import 'package:doc_link_project/core/common/widgets/custom_button.dart';
import 'package:doc_link_project/core/common/widgets/custom_loading_icon.dart';
import 'package:doc_link_project/core/utils/function/custom_toast_message.dart';
import 'package:doc_link_project/features/auth/presentation/manager/cubits/forget_password_cubit.dart';
import 'package:doc_link_project/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ForgetPasswordButtonBlocConsumer extends StatelessWidget {
  const ForgetPasswordButtonBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ForgetPasswordCubit, ForgetPasswordState>(
        listener: (context, state) {
      if (state is SendOtpToEmailSuccess) {
        context.read<ForgetPasswordCubit>().toVerifyAccount();
        customTopToastMessage(context,
            msg:
                "${S.of(context).codeWasSentToYourEmail}${context.read<ForgetPasswordCubit>().forgetedPasswordEmail.text}",
            type: ToastMessageType.success);
      }
      if (state is SendOtpToEmailFailure) {
        customBottomToastMessage(context,
            msg: state.errorMessage, type: ToastMessageType.error);
      }
    }, builder: (context, state) {
      return state is SendOtpToEmailLoading
          ? const CustomLoadingIcon()
          : CustomButton(
              buttonTitle: S.of(context).confirm,
              onPressed: () {
                if (context
                    .read<ForgetPasswordCubit>()
                    .forgetedPasswordFormKey
                    .currentState!
                    .validate()) {
                  context.read<ForgetPasswordCubit>().sendOtpToEmail(context);
                }
              },
            );
    });
  }
}
