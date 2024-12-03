import 'package:doc_link_project/features/user_views/home/data/models/speciality_model/speciality_data.dart';

import 'package:doc_link_project/core/utils/app_colors.dart';
import 'package:doc_link_project/core/utils/app_router.dart';
import 'package:doc_link_project/core/utils/styless.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomSpecialtyCard extends StatelessWidget {
  final SpecialityData? specialityData;
  const CustomSpecialtyCard({
    super.key,
    this.specialityData,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 0.9,
      child: InkWell(
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
          child: specialityData == null
              ? const SizedBox()
              : Column(
                  children: [
                    Expanded(
                      flex: 6,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(24),
                        child: Image.network(
                          specialityData!.imageUrl!,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    const Expanded(child: SizedBox()),
                    Column(
                      children: [
                        Text(
                          specialityData!.name!,
                          style: Styless.textBold18
                              .copyWith(color: AppColors.black),
                        ),
                        Text(
                          '${specialityData!.numberOfDoctors} Doctor',
                          style: Styless.textBold14
                              .copyWith(color: AppColors.grey),
                        ),
                      ],
                    ),
                    const Expanded(child: SizedBox()),
                  ],
                ),
        ),
      ),
    );
  }
}
