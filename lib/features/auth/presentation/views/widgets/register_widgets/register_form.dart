import 'package:doc_link_project/constants.dart';
import 'package:doc_link_project/core/common/widgets/custom_fade_animation.dart';
import 'package:doc_link_project/features/auth/presentation/manager/cubits/auth_cubit.dart';
import 'package:doc_link_project/features/auth/presentation/views/widgets/register_widgets/custom_register_text_field_section.dart';
import 'package:doc_link_project/features/auth/presentation/views/widgets/register_widgets/register_button_bloc_consumer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterForm extends StatelessWidget {
  const RegisterForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<AuthCubit>().registerFormKey,
      child: const Column(
        children: [
          CustomRegisterTextFieldSection(),
          SizedBox(height: 20),
          CustomFadeInLeft(
            duration: animationDuration,
            child: RegisterButtonBlocConsumer(),
          ),
        ],
      ),
    );
  }
}
