import 'package:doc_link_project/core/common/widgets/custom_button.dart';
import 'package:doc_link_project/core/common/widgets/custom_text_form_field.dart';
import 'package:doc_link_project/core/utils/app_colors.dart';
import 'package:doc_link_project/core/utils/styless.dart';
import 'package:doc_link_project/features/user_views/new_appointment/presentation/views/widgets/patient_gender.dart';
import 'package:doc_link_project/features/user_views/new_appointment/presentation/views/widgets/write_your_problem_section.dart';
import 'package:doc_link_project/generated/l10n.dart';
import 'package:flutter/material.dart';

class PatientDetailsSection extends StatelessWidget {
  const PatientDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            child: Text(
              S.of(context).patientDetails,
              style: Styless.textBold18.copyWith(color: AppColors.black),
            ),
          ),
          const SizedBox(height: 10),
          CustomTextFormField(
            hintTxt: S.of(context).fullName,
          ),
          const SizedBox(height: 10),
          CustomTextFormField(
            hintTxt: S.of(context).age,
            keyboardType: TextInputType.number,
          ),
          const SizedBox(height: 20),
          const PatientGender(),
          const SizedBox(height: 20),
          const WriteYourProblemSection(),
          const SizedBox(height: 20),
          CustomButton(
            onPressed: () {},
            buttonTitle: S.of(context).setAppointment,
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
