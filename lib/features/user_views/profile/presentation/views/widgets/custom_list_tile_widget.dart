import 'package:doc_link_project/core/utils/styless.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CustomListTileWidget extends StatelessWidget {
  final String txt;
  final String imagePath;
  final Function() onPressed;
  const CustomListTileWidget({
    super.key,
    required this.txt,
    required this.imagePath,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Intl.getCurrentLocale() == 'en'
          ? const EdgeInsets.only(left: 20)
          : const EdgeInsets.only(right: 20),
      child: ListTile(
        onTap: onPressed,
        title: Text(
          txt,
          style: Styless.textSemiBold20.copyWith(color: Colors.black),
        ),
        leading: Image.asset(imagePath),
        trailing: const Icon(Icons.arrow_forward_ios_outlined, size: 18),
      ),
    );
  }
}
