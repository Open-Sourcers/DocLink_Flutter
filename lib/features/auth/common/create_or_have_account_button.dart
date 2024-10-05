import 'package:doc_link_project/constants.dart';
import 'package:doc_link_project/core/utils/styless.dart';
import 'package:flutter/material.dart';

class CreateOrHaveAccountButton extends StatelessWidget {
  final String title;
  final Function() onTap;
  const CreateOrHaveAccountButton({
    super.key,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Text(
        title,
        textAlign: TextAlign.center,
        style: Styless.textBold18,
      ),
    );
  }
}
