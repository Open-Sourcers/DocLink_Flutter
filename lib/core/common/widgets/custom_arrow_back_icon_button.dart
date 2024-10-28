import 'package:doc_link_project/core/common/widgets/custom_icon_cutton_container.dart';
import 'package:flutter/material.dart';

class CustomArrowBackIconButton extends StatelessWidget {
  const CustomArrowBackIconButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pop(context);
      },
      child: const CustomIconButtonContainer(
        child: Icon(Icons.arrow_back),
      ),
    );
  }
}