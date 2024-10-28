import 'package:doc_link_project/features/user_views/home/presentation/views/widgets/home_advertisements.dart';
import 'package:doc_link_project/features/user_views/home/presentation/views/widgets/search_about_siutable_doctor_section.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        HomeAdvertisementsSection(),
        SearchAboutSuitableDoctorSection(),
      ],
    );
  }
}