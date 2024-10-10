
import 'package:doc_link_project/core/common/widgets/custom_button.dart';
import 'package:doc_link_project/core/common/widgets/custom_loading_icon.dart';
import 'package:doc_link_project/features/auth/presentation/manager/cubits/auth_cubit.dart';
import 'package:doc_link_project/features/auth/presentation/manager/cubits/auth_state.dart';
import 'package:doc_link_project/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginButtonBlocConsumer extends StatelessWidget {
  const LoginButtonBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
        listener: (context, state) {
          if(state is LoginSuccess){
            print("success ----------------");
          }else if (state is LoginFailure){
            print(state.errorMessage);
          }
        },
        builder: (context, state) {
          return state is LoginLoading
              ? const CustomLoadingIcon()
              : CustomButton(
                  buttonTitle: S.of(context).signIn,
                  onPressed: () {
                    if (context
                        .read<AuthCubit>()
                        .loginFormKey
                        .currentState!
                        .validate()) {
                      context.read<AuthCubit>().login(context);
                    }
                  },
                );
        });
  }
}
