import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:doc_link_project/core/common/widgets/custom_button.dart';
import 'package:doc_link_project/core/common/widgets/custom_loading_icon.dart';
import 'package:doc_link_project/core/utils/app_router.dart';
import 'package:doc_link_project/core/utils/function/show_awesome_dialog.dart';
import 'package:doc_link_project/features/auth/presentation/manager/cubits/auth_cubit.dart';
import 'package:doc_link_project/features/auth/presentation/manager/cubits/auth_state.dart';
import 'package:doc_link_project/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class RegisterButtonBlocConsumer extends StatelessWidget {
  const RegisterButtonBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is RegisterSuccess) {
          GoRouter.of(context).pushReplacement(AppRouter.loginView);
        } else if (state is RegisterFailure) {
          showAwesomDialog(context, title: "Error", desc: state.errorMessage);
        }
      },
      builder: (context, state) {
        return state is RegisterLoading
            ? const CustomLoadingIcon()
            : CustomButton(
                buttonTitle: S.of(context).SignUp,
                onPressed: () {
                  var cubit = context.read<AuthCubit>();
                  if (cubit.registerPassword.text !=
                      cubit.registerConfirmPassword.text) {
                    showAwesomDialog(
                      context,
                      title: S.of(context).beCareful,
                      desc: S.of(context).passwordEqualConfirmPass,
                      dialogType: DialogType.info,
                    );
                  } else if (cubit.registerFormKey.currentState!.validate()) {
                    cubit.register(context);
                  }
                },
              );
      },
    );
  }
}
