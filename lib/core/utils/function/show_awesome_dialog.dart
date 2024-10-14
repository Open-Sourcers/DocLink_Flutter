import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:doc_link_project/core/utils/app_colors.dart';
import 'package:doc_link_project/core/utils/styless.dart';
import 'package:flutter/material.dart';

showAwesomDialog(BuildContext context,
    {required String title,
    required String desc,
    bool autoDismiss = false,
    void Function()? btnOkOnPress,
    DialogType dialogType = DialogType.error}) {
  return AwesomeDialog(
      dialogBackgroundColor: AppColors.commonColor,
      context: context,
      animType: AnimType.topSlide,
      title: title,
      desc: desc,
      descTextStyle: Styless.textMedium20.copyWith(color: AppColors.white),
      titleTextStyle: Styless.textBold30.copyWith(color: AppColors.white),
      dialogType: dialogType,
      btnOkOnPress: btnOkOnPress,
      btnCancelOnPress: () {},
      btnCancelText: "Try again 😮!")
    ..show();
}
