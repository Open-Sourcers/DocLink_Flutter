import 'package:doc_link_project/core/common/widgets/custom_button.dart';
import 'package:doc_link_project/core/utils/app_images.dart';
import 'package:doc_link_project/core/utils/function/decoration_app_method.dart';
import 'package:doc_link_project/core/utils/styless.dart';
import 'package:doc_link_project/generated/l10n.dart';
import 'package:flutter/material.dart';

class VerificaitionEmailViewBody extends StatelessWidget {
  const VerificaitionEmailViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: decorationAppMethod(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(
            AppImages.imagesVerify,
            height: 150,
          ),
          const SizedBox(height: 50),
          Text(
            S.of(context).verificationEmail,
            textAlign: TextAlign.center,
            style: Styless.textSemiBold15.copyWith(fontSize: 18),
          ),
          const SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: CustomButton(
              onPressed: () {},
              buttonTitle: S.of(context).resendEmail,
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: CustomButton(
              onPressed: () {},
              buttonTitle: S.of(context).cancel,
              backgroundColor: Colors.white,
              textColor: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
