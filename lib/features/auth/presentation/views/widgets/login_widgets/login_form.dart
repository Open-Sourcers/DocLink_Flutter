import 'package:doc_link_project/features/auth/presentation/manager/cubits/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'custom_login_text_field_section.dart';
import 'forget_password_button.dart';
import 'login_button_bloc_consumer.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<AuthCubit>().loginFormKey,
      child: const Column(
        children: [
          CustomLoginTextFieldsSection(),
          SizedBox(height: 20),
          //forget password button
          ForgetPasswordButton(),
          SizedBox(height: 20),
          // Sign in button
          LoginButtonBlocConsumer(),
        ],
      ),
    );
  }
}
