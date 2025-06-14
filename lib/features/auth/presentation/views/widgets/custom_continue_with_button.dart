import 'package:flutter/material.dart';

class CustomContinueWithButton extends StatelessWidget {
  final Icon icon;
  final Function()? onPressed;
  const CustomContinueWithButton({
    super.key,
    required this.icon,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      borderRadius: BorderRadius.circular(10),
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: const Color(0xffececec),
          borderRadius: BorderRadius.circular(10),
        ),
        child: icon,
      ),
    );
  }
}
