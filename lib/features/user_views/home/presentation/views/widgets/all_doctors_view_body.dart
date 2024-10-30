import 'package:doc_link_project/features/user_views/home/presentation/views/widgets/custom_doctor_card.dart';
import 'package:flutter/material.dart';

import 'all_doctors_search_feild.dart';

class AllDoctorsViewBody extends StatelessWidget {
  const AllDoctorsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        AllDoctorsSearchFeild(),
        SliverToBoxAdapter(
          child: CustomDoctorCard(),
        )
      ],
    );
  }
}
