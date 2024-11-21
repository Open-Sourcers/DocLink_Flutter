import 'package:date_picker_plus/date_picker_plus.dart';
import 'package:doc_link_project/constants.dart';
import 'package:doc_link_project/core/common/widgets/custom_fade_animation.dart';
import 'package:doc_link_project/core/common/widgets/custom_text_form_field.dart';
import 'package:doc_link_project/features/auth/presentation/manager/cubits/auth_cubit.dart';
import 'package:doc_link_project/features/auth/presentation/manager/cubits/auth_state.dart';
import 'package:doc_link_project/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomBirthDayTextFormField extends StatelessWidget {
  const CustomBirthDayTextFormField({super.key});
  Future<DateTime?> pickBirthDay(BuildContext context) async {
    return await showDatePickerDialog(
      context: context,
      initialDate: DateTime(2022, 11, 26),
      minDate: DateTime(1950),
      maxDate: DateTime.now(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthCubit, AuthState>(
      builder: (context, state) {
        return CustomFadeInLeft(
          duration: animationDuration,
          child: CustomTextFormField(
            hintTxt: S.of(context).birthDay,
            readOnly: true,
            suffix: InkWell(
              onTap: () async {
                DateTime? date = await pickBirthDay(context);
                // ignore: use_build_context_synchronously
                context.read<AuthCubit>().setRegisterBirthDay(date);
              },
              child: const Icon(Icons.calendar_month),
            ),
            controller: context.read<AuthCubit>().registerBirthDay,
            validator: (val) {
              if (val == null || val.isEmpty) {
                return S.of(context).required;
              }
              return null;
            },
          ),
        );
      },
    );
  }
}
