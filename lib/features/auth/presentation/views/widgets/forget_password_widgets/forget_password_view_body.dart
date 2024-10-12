import 'package:doc_link_project/features/auth/presentation/manager/cubits/forget_password_cubit.dart';
import 'package:doc_link_project/features/auth/presentation/views/widgets/forget_password_widgets/forget_password_body.dart';
import 'package:doc_link_project/features/auth/presentation/views/widgets/forget_password_widgets/reset_password_body.dart';
import 'package:doc_link_project/features/auth/presentation/views/widgets/forget_password_widgets/verify_account_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ForgetPasswordViewBody extends StatelessWidget {
  const ForgetPasswordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ForgetPasswordCubit, ForgetPasswordState>(
      builder: (context, state) {
        if (context.read<ForgetPasswordCubit>().currentView ==
            ForgetPasswordEnum.setEmail) {
          return const ForgetPasswordBody();
        } else if (context.read<ForgetPasswordCubit>().currentView ==
            ForgetPasswordEnum.verifyAccount) {
          return const VerifyAccountViewBody();
        } else if (context.read<ForgetPasswordCubit>().currentView ==
            ForgetPasswordEnum.resetPassword) {
          return const ResetPasswordViewBody();
        }
        return const SizedBox();
      },
    );
  }
}
