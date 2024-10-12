import 'package:doc_link_project/constants.dart';
import 'package:doc_link_project/core/common/widgets/custom_button.dart';
import 'package:doc_link_project/core/utils/function/decoration_app_method.dart';
import 'package:doc_link_project/features/auth/presentation/manager/cubits/forget_password_cubit.dart';
import 'package:doc_link_project/features/auth/presentation/views/widgets/custom_description_texts.dart';
import 'package:doc_link_project/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinput/pinput.dart';

class VerifyAccountViewBody extends StatefulWidget {
  const VerifyAccountViewBody({super.key});

  @override
  State<VerifyAccountViewBody> createState() => _VerifyAccountViewBodyState();
}

class _VerifyAccountViewBodyState extends State<VerifyAccountViewBody> {
  bool isCompleted = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: decorationAppMethod(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 70.h),
            CustomDescriptionTexts(
              headerTxt: S.of(context).verifyAccount,
              description: S.of(context).codeVerify,
            ),
            const SizedBox(height: 160),
            pinputMethod(),
            const SizedBox(height: 100),
            CustomButton(
              buttonTitle: S.of(context).confirm,
              onPressed: () {
                context.read<ForgetPasswordCubit>().toResetPassword();
              },
              isCompleted: isCompleted,
            ),
          ],
        ),
      ),
    );
  }

  Pinput pinputMethod() {
    return Pinput(
      length: 6,
      onChanged: (value) {
        setState(() {
          isCompleted = false;
        });
      },
      onCompleted: (value) {
        isCompleted = true;
      },
      defaultPinTheme: defaultPinTheme,
      focusedPinTheme: focusedPinTheme,
      keyboardType: TextInputType.number,
    );
  }
}
