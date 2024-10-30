import 'package:doc_link_project/core/common/widgets/custom_circle_avatar_image.dart';
import 'package:doc_link_project/core/utils/app_colors.dart';
import 'package:doc_link_project/core/utils/styless.dart';
import 'package:doc_link_project/features/user_views/doctor_details/presentation/view/widgets/doctor_details_header_section.dart';
import 'package:flutter/material.dart';

class DoctorDetailsViewBody extends StatelessWidget {
  const DoctorDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            DoctorDetailsHeaderSecatin(),
          ],
        ),
      ),
    );
  }
}
