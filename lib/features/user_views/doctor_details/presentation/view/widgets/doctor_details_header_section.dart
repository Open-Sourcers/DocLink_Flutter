import 'package:doc_link_project/core/common/widgets/custom_circle_avatar_image.dart';
import 'package:doc_link_project/core/utils/app_colors.dart';
import 'package:doc_link_project/core/utils/styless.dart';
import 'package:flutter/material.dart';

import '../../../../home/data/models/doctor_model/doctor_data.dart';

class DoctorDetailsHeaderSecatin extends StatelessWidget {
  const DoctorDetailsHeaderSecatin({
    super.key,
    this.doctor,
  });
  final DoctorData? doctor;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomCircleAvatarImage(
          radius: 100,
          url: doctor?.image,
        ),
        const SizedBox(height: 15),
        Text(
          doctor?.firstName == null && doctor?.lastName == null
              ? "Dr/ ${doctor?.userName ?? ''}"
              : "Dr/ ${doctor?.firstName ?? ''} ${doctor?.lastName ?? ''}",
          style: Styless.textBold18.copyWith(color: AppColors.black),
        ),
        const SizedBox(height: 5),
        Text(doctor?.specialty ?? '-NON-', style: Styless.textRegular14),
        const SizedBox(height: 3),
      ],
    );
  }
}
