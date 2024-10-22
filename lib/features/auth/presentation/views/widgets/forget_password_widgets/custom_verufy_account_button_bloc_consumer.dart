import 'package:doc_link_project/core/common/widgets/custom_button.dart';
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
    return CustomButton(
      buttonTitle: S.of(context).confirm,
      onPressed: () {
        context.read<ForgetPasswordCubit>().toResetPassword();
      },
      isCompleted: isCompleted,
    );
  }
}
