import 'package:doc_link_project/core/services/services_locator.dart';
import 'package:doc_link_project/features/auth/data/repo/forget_password_repo_impl.dart';
import 'package:doc_link_project/features/auth/presentation/manager/cubits/forget_password_cubit.dart';
import 'package:doc_link_project/features/auth/presentation/views/widgets/forget_password_widgets/forget_password_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider<ForgetPasswordCubit>(
        create: (context) => ForgetPasswordCubit(
            forgetPasswordRepoImpl: getit.get<ForgetPasswordRepoImpl>()),
        child: const ForgetPasswordViewBody(),
      ),
    );
  }
}
