import 'package:doc_link_project/core/common/widgets/custom_button.dart';
import 'package:doc_link_project/core/common/widgets/custom_loading_icon.dart';
import 'package:doc_link_project/core/utils/function/custom_toast_message.dart';
import 'package:doc_link_project/features/auth/presentation/manager/cubits/forget_password_cubit.dart';
import 'package:doc_link_project/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomVerifyAccountButtonBlocConsumer extends StatelessWidget {
  const CustomVerifyAccountButtonBlocConsumer({
    super.key,
    required this.isCompleted,
  });

  final bool isCompleted;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ForgetPasswordCubit, ForgetPasswordState>(
      listener: (context, state) {
        if (state is VerifyAccountFailure) {
          customTopToastMessage(context,
              msg: state.errorMessage, type: ToastMessageType.error);
        }
        if (state is VerifyAccountSuccess) {
          customTopToastMessage(context,
              msg: S.of(context).verification_success,
              type: ToastMessageType.success);
        }
      },
      builder: (context, state) {
        return state is VerifyAccountLoading
            ? const CustomLoadingIcon()
            : CustomButton(
                buttonTitle: S.of(context).confirm,
                onPressed: () {
                  context.read<ForgetPasswordCubit>().toResetPassword();
                },
                isCompleted: isCompleted,
              );
      },
    );
  }
}
