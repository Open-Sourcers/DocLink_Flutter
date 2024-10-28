import 'package:doc_link_project/core/app/cubit/app_lang_change_cubit.dart';
import 'package:doc_link_project/core/common/widgets/custom_icon_cutton_container.dart';
import 'package:doc_link_project/core/utils/app_colors.dart';
import 'package:doc_link_project/core/utils/styless.dart';
import 'package:doc_link_project/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchAboutSuitableDoctorSection extends StatelessWidget {
  const SearchAboutSuitableDoctorSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      margin: const EdgeInsets.symmetric(horizontal: 18),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: const Color.fromARGB(255, 232, 240, 255),
      ),
      child: Center(
        child: ListTile(
          onTap: () {
          },
          title: Text(
            S.of(context).haveProblem,
            style: Styless.textSemiBold20.copyWith(color: AppColors.black),
          ),
          subtitle: Text(
            S.of(context).findSuitableSpecialists,
            style: Styless.textSemiBold14.copyWith(color: AppColors.grey),
          ),
          trailing: CustomIconButtonContainer(
            child: context.read<AppLangChangeCubit>().currentLang == 'ar'
                ? const Icon(Icons.keyboard_double_arrow_left_outlined)
                : const Icon(Icons.keyboard_double_arrow_right_outlined),
          ),
        ),
      ),
    );
  }
}
