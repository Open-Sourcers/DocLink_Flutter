import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomCalenderAndTimeItem extends StatelessWidget {
  const CustomCalenderAndTimeItem({
    super.key,
    required this.image,
    required this.dateOrTime,
  });
  final String image;
  final String dateOrTime;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(image),
        const SizedBox(width: 8),
        Text(dateOrTime)
      ],
    );
  }
}
