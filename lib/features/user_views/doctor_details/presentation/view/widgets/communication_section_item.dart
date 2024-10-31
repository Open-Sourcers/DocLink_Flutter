import 'package:doc_link_project/core/utils/app_colors.dart';
import 'package:doc_link_project/core/utils/styless.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CommunicationSectionItem extends StatelessWidget {
  const CommunicationSectionItem({
    super.key,
    required this.title,
    required this.subtitle,
    required this.leadingImage,
    this.onTap,
  });
  final String title;
  final String subtitle;
  final String leadingImage;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(top: 12.0),
        child: ListTile(
          contentPadding: EdgeInsets.zero,
          title: Text(
            title,
            style: Styless.textBold18.copyWith(color: AppColors.black),
          ),
          subtitle: Text(
            subtitle,
            style: Styless.textRegular16,
          ),
          leading: Expanded(child: SvgPicture.asset(leadingImage)),
        ),
      ),
    );
  }
}
