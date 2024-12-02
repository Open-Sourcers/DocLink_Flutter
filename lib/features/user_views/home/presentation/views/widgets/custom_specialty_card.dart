import 'package:doc_link_project/core/utils/app_colors.dart';
import 'package:doc_link_project/core/utils/app_router.dart';
import 'package:doc_link_project/core/utils/styless.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomSpecialtyCard extends StatelessWidget {
  final String? image;
  final String? docSpec;
  const CustomSpecialtyCard({
    super.key,
    this.image,
    this.docSpec,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        GoRouter.of(context).push(AppRouter.allDoctorView);
      },
      child: Container(
        height: 170,
        width: 140,
        margin: const EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
          color: AppColors.grey200,
          // color: AppColors.commonColor,
          borderRadius: BorderRadius.circular(24),
          // border: Border.all(width: 0.5)
        ),
        child: Column(
          children: [
            SizedBox(
              height: 2 * 170 / 3,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(24),
                child: Image.network(
                  image!,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            const Expanded(child: SizedBox()),
            Column(
              children: [
                Text(
                  docSpec!,
                  style: Styless.textBold18.copyWith(color: AppColors.black),
                ),
                Text(
                  '999 Doctor',
                  style: Styless.textBold14.copyWith(color: AppColors.grey),
                ),
              ],
            ),
            const Expanded(child: SizedBox()),
          ],
        ),
      ),
    );
  }
}
