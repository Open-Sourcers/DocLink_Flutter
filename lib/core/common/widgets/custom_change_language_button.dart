import 'package:doc_link_project/core/app/cubit/app_lang_change_cubit.dart';
import 'package:doc_link_project/core/common/widgets/custom_button.dart';
import 'package:doc_link_project/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomChangeLanguageButton extends StatelessWidget {
  const CustomChangeLanguageButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 105.0),
      child: CustomButton(
        onPressed: () {
          if (context.read<AppLangChangeCubit>().currentLang == 'ar') {
            context.read<AppLangChangeCubit>().toEnglish();
          } else {
            context.read<AppLangChangeCubit>().toArabic();
          }
        },
        buttonTitle: S.of(context).language,
      ),
    );
  }
}
