import 'package:flutter/material.dart';

class CustomIconButtonContainer extends StatelessWidget {
  const CustomIconButtonContainer({
    super.key,
    required this.child,
  });
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      constraints: const BoxConstraints(
        maxHeight: 60,
        minHeight: 40,
        maxWidth: 60,
        minWidth: 40,
      ),
      padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: const Color(0xffF1F4F7),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Center(child: child),
    );
  }
}
