import 'package:doc_link_project/core/utils/app_colors.dart';
import 'package:doc_link_project/core/utils/styless.dart';
import 'package:doc_link_project/features/auth/presentation/manager/cubits/auth_cubit.dart';
import 'package:doc_link_project/features/auth/presentation/manager/cubits/auth_state.dart';
import 'package:doc_link_project/generated/l10n.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

const List<String> items = ['Male', 'Female'];

class CustomGenderTextFormField extends StatelessWidget {
  const CustomGenderTextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthCubit, AuthState>(
      builder: (context, state) {
        return DropdownButtonHideUnderline(
          child: DropdownButtonFormField<String>(
            hint: Text(S.of(context).gender, style: Styless.textRegular14),
            autovalidateMode: AutovalidateMode.onUserInteraction,
            validator: (val) {
              if (val == null || val.isEmpty) {
                return S.of(context).required;
              }
              return null;
            },
            items: items
                .map(
                  (String item) => DropdownMenuItem<String>(
                    value: item,
                    child: Text(item, style: Styless.textSemiBold15),
                  ),
                )
                .toList(),
            value: context.read<AuthCubit>().registerGender,
            onChanged: (String? value) {
              context.read<AuthCubit>().setRegisterGender(value);
            },
            style: Styless.textSemiBold15,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.all(20),
              hintStyle: Styless.textMedium16,
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(12),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: const BorderSide(
                  color: AppColors.commonColor,
                  width: 2,
                ),
              ),
              filled: true,
              fillColor: AppColors.txtFieldFilledColor,
            ),
          ),
        );
      },
    );
  }
}
