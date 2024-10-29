import 'package:doc_link_project/core/utils/app_colors.dart';
import 'package:doc_link_project/core/utils/app_images.dart';
import 'package:doc_link_project/core/utils/styless.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomSpecialtyCard extends StatelessWidget {
  const CustomSpecialtyCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 125,
      decoration: BoxDecoration(
        color: AppColors.grey200,
        borderRadius: BorderRadius.circular(12),
        // border: Border.all(width: 0.5)
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SvgPicture.asset(
              AppImages.imagesTestDentist,
              fit: BoxFit.fill,
            ),
            // const SizedBox(height: 20),
             Column(
              children: [
                Text(
                  'Dentistry',
                  style:
                      Styless.textBold18.copyWith(color: AppColors.black),
                ),
                Text(
                  '999 Doctor',
                  style: Styless.textBold14.copyWith(color: AppColors.grey),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
