import 'package:doc_link_project/constants.dart';
import 'package:doc_link_project/core/common/widgets/custom_button.dart';
import 'package:doc_link_project/core/utils/app_colors.dart';
import 'package:doc_link_project/generated/l10n.dart';
import 'package:flutter/material.dart';
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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: 70.h),
          Text(
            S.of(context).verifyAccount,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 28,
              color: AppColors.commonColor,
              fontWeight: FontWeight.w900,
              fontFamily: spaceGrotesk,
            ),
          ),
          const SizedBox(height: 15),
          Text(
            S.of(context).codeVerify,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              fontFamily: spaceGrotesk,
            ),
          ),
          const SizedBox(height: 160),
          pinputMethod(),
          const SizedBox(height: 100),
          CustomButton(
            buttonTitle: S.of(context).confirm,
            onPressed: () {},
            isCompleted: isCompleted,
          ),
        ],
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
