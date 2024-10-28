import 'package:doc_link_project/core/common/widgets/custom_arrow_back_icon_button.dart';
import 'package:doc_link_project/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

AppBar customUserAppBar(
  BuildContext context, {
  Widget? title,
  bool? centerTitle,
  bool showLeadingIcon = false,
}) {
  return AppBar(
    title: title,
    centerTitle: centerTitle,
    backgroundColor: AppColors.white,
    flexibleSpace: Container(color: AppColors.white),
    automaticallyImplyLeading: showLeadingIcon,
    leading: showLeadingIcon ? const CustomArrowBackIconButton() : null,
  );
}
