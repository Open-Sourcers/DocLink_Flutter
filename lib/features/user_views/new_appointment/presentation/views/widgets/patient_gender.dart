import 'package:doc_link_project/core/common/widgets/custom_button.dart';
import 'package:doc_link_project/core/utils/app_colors.dart';
import 'package:doc_link_project/core/utils/styless.dart';
import 'package:doc_link_project/generated/l10n.dart';
import 'package:flutter/material.dart';

class PatientGender extends StatefulWidget {
  const PatientGender({super.key});

  @override
  State<PatientGender> createState() => _PatientGenderState();
}

class _PatientGenderState extends State<PatientGender> {
  bool male = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: Text(
            S.of(context).gender,
            style: Styless.textSemiBold15.copyWith(color: AppColors.black),
          ),
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            Expanded(
              child: CustomButton(
                textColor: male ? AppColors.white : AppColors.commonColor,
                backgroundColor: male ? AppColors.commonColor : AppColors.white,
                onPressed: () {
                  male = true;
                  setState(() {});
                },
                buttonTitle: S.of(context).male,
              ),
            ),
            const SizedBox(width: 15),
            Expanded(
              child: CustomButton(
                textColor: male ? AppColors.commonColor : AppColors.white,
                backgroundColor: male ? AppColors.white : AppColors.commonColor,
                onPressed: () {
                  male = false;
                  setState(() {});
                },
                buttonTitle: S.of(context).female,
              ),
            ),
            const Expanded(child: SizedBox()),
          ],
        ),
      ],
    );
  }
}
