import 'package:doc_link_project/core/common/widgets/custom_button.dart';
import 'package:doc_link_project/core/utils/app_router.dart';
import 'package:doc_link_project/features/user_views/doctor_details/presentation/view/widgets/about_doctor_section.dart';
import 'package:doc_link_project/features/user_views/doctor_details/presentation/view/widgets/communication_section.dart';
import 'package:doc_link_project/features/user_views/doctor_details/presentation/view/widgets/doctor_details_header_section.dart';
import 'package:doc_link_project/features/user_views/doctor_details/presentation/view/widgets/doctor_patients_and_experience_and_ratings.dart';
import 'package:doc_link_project/features/user_views/doctor_details/presentation/view/widgets/working_time_section.dart';
import 'package:doc_link_project/features/user_views/home/data/models/doctor_model/doctor_data.dart';
import 'package:doc_link_project/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DoctorDetailsViewBody extends StatelessWidget {
  final DoctorData? doctor;
  const DoctorDetailsViewBody({super.key, this.doctor});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 18),
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          children: [
            DoctorDetailsHeaderSecatin(doctor: doctor),
            DoctorPatientsAndExperienceAndRatings(
              patientsNum: doctor?.consultationFee ?? 0,
              experienceYearsNum: doctor?.yearsOfExperience ?? 0,
              ratingsNum: doctor?.rate ?? 0,
            ),
            AboutDoctorSection(desc: doctor?.about ?? 'NO-INFO'),
            const WorkingTimeSection(
              time: 'Mon - Sat (08:30 AM - 09:00 PM)',
            ),
            const CommunicationSection(),
            const SizedBox(height: 30),
            CustomButton(
              onPressed: () {
                GoRouter.of(context).push(AppRouter.newAppointmentView);
              },
              buttonTitle: S.of(context).bookAppoinment,
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
