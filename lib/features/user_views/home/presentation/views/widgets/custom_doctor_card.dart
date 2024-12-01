import 'package:doc_link_project/core/common/widgets/custom_circle_avatar_image.dart';
import 'package:doc_link_project/core/utils/app_colors.dart';
import 'package:doc_link_project/core/utils/app_router.dart';
import 'package:doc_link_project/core/utils/styless.dart';
import 'package:doc_link_project/features/user_views/home/data/models/doctor_model/doctor_data.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomDoctorCard extends StatelessWidget {
  final DoctorData? doctor;

  const CustomDoctorCard({super.key, this.doctor});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        GoRouter.of(context).push(AppRouter.doctorDetailsView, extra: doctor);
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
              url: doctor!.image,
              radius: 40,
            )),
            Text(
              doctor!.userName!,
              style: Styless.textBold18.copyWith(color: AppColors.black),
            ),
            const SizedBox(height: 5),
            Text(
              doctor!.specialty!,
              style: Styless.textRegular14,
            ),
            const SizedBox(height: 3),
            Text(
              "⭐️${doctor!.rate}",
              style: Styless.textRegular14,
            ),
          ],
        ),
      ),
    );
  }
}
