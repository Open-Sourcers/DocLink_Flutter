import 'package:doc_link_project/features/user_views/doctor_details/presentation/view/widgets/about_doctor_section.dart';
import 'package:doc_link_project/features/user_views/doctor_details/presentation/view/widgets/doctor_details_header_section.dart';
import 'package:doc_link_project/features/user_views/doctor_details/presentation/view/widgets/doctor_patients_and_experience_and_ratings.dart';
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
            DoctorPatientsAndExperienceAndRatings(
              patientsNum: 1000,
              experienceYearsNum: 10,
              ratingsNum: 4.5,
            ),
            AboutDoctorSection(
              desc:
                  'Dr. Bellamy Nicholas is a top specialist at London Bridge Hospital at London. He has achieved several awards and recognition for is contribution and service in his own field. He is available for private consultation. ',
            ),
          ],
        ),
      ),
    );
  }
}
