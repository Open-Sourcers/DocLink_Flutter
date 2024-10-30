import 'package:doc_link_project/core/utils/app_colors.dart';
import 'package:doc_link_project/core/utils/app_images.dart';
import 'package:doc_link_project/core/utils/styless.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DoctorPatientsAndExperienceAndRatings extends StatelessWidget {
  const DoctorPatientsAndExperienceAndRatings(
      {super.key,
      required this.patientsNum,
      required this.experienceYearsNum,
      required this.ratingsNum});

  final num patientsNum;
  final num experienceYearsNum;
  final num ratingsNum;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 130,
      alignment: Alignment.topCenter,
      margin: const EdgeInsets.all(12),
      decoration: const BoxDecoration(color: AppColors.grey100),
      child: Row(
        children: [
          DoctorPatientsAndExperienceAndRatingsCard(
            image: AppImages.imagesPatients1000,
            title: '$patientsNum+',
            subtitle: 'Patients',
          ),
          const SizedBox(width: 3),
          DoctorPatientsAndExperienceAndRatingsCard(
            image: AppImages.imagesExperienceYears,
            title: '$experienceYearsNum Yrs',
            subtitle: 'Experience',
          ),
          const SizedBox(width: 3),
          DoctorPatientsAndExperienceAndRatingsCard(
            image: AppImages.imagesRatingStare,
            title: ratingsNum.toString(),
            subtitle: 'Ratings',
          ),
        ],
      ),
    );
  }
}

class DoctorPatientsAndExperienceAndRatingsCard extends StatelessWidget {
  const DoctorPatientsAndExperienceAndRatingsCard(
      {super.key,
      required this.image,
      required this.title,
      required this.subtitle});
  final String image;
  final String title;
  final String subtitle;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: AppColors.grey200),
        ),
        child: Column(
          children: [
            Flexible(child: SvgPicture.asset(image)),
            Text(
              title,
              style: Styless.textBold14.copyWith(
                color: AppColors.black,
              ),
            ),
            Text(subtitle, style: Styless.textRegular14),
          ],
        ),
      ),
    );
  }
}
