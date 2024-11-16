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
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        title: Text(title, style: Styless.textMedium18),
        subtitle: Text(subtitle, style: Styless.textRegular14),
        leading: SvgPicture.asset(leadingImage, fit: BoxFit.fill),
      ),
    );
  }
}
