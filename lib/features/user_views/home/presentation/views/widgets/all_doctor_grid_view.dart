import 'package:doc_link_project/features/user_views/home/presentation/views/widgets/custom_doctor_card.dart';
import 'package:flutter/material.dart';

class AllDoctorsGridView extends StatelessWidget {
  const AllDoctorsGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12, left: 12, bottom: 12),
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 1,
        ),
        itemCount: 10,
        itemBuilder: (context, state) {
          return const CustomDoctorCard();
        },
      ),
    );
  }
}
