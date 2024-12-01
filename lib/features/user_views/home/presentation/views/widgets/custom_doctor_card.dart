import 'package:doc_link_project/core/common/widgets/custom_circle_avatar_image.dart';
import 'package:doc_link_project/core/utils/app_colors.dart';
import 'package:doc_link_project/core/utils/app_router.dart';
import 'package:doc_link_project/core/utils/styless.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomDoctorCard extends StatelessWidget {
  final String? urlImg;
  final String? name;
  final String? spec;
  final num? rate;
  const CustomDoctorCard(
      {super.key, this.name, this.spec, this.rate, this.urlImg});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        GoRouter.of(context).push(AppRouter.doctorDetailsView);
      },
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: AppColors.grey100,
          borderRadius: BorderRadius.circular(18),
        ),
        child: Column(
          children: [
            Expanded(
                child: CustomCircleAvatarImage(
              url: urlImg,
              radius: 40,
            )),
            Text(
              name!,
              style: Styless.textBold18.copyWith(color: AppColors.black),
            ),
            const SizedBox(height: 5),
            Text(
              spec!,
              style: Styless.textRegular14,
            ),
            const SizedBox(height: 3),
            Text(
              "⭐️${rate!}",
              style: Styless.textRegular14,
            ),
          ],
        ),
      ),
    );
  }
}
