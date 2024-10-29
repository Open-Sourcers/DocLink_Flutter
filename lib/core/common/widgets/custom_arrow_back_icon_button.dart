import 'package:doc_link_project/core/common/widgets/custom_icon_button_container.dart';
import 'package:flutter/material.dart';

class CustomArrowBackIconButton extends StatelessWidget {
  const CustomArrowBackIconButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonContainer(
      child: const Icon(Icons.arrow_back),
      onTap: () {
        Navigator.pop(context);
      },
    );
  }
}
