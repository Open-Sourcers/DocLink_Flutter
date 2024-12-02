import 'package:doc_link_project/features/user_views/home/data/models/speciality_model/speciality_data.dart';
import 'package:doc_link_project/features/user_views/home/presentation/views/widgets/custom_specialty_card.dart';
import 'package:flutter/material.dart';

class AllSpecialtiesListView extends StatelessWidget {
  final List<SpecialityData>? specs;
  const AllSpecialtiesListView({super.key, this.specs});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 170,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: specs!.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(
              left: index == 0 ? 10.0 : 0,
              right: index == specs!.length - 1 ? 10.0 : 0,
            ),
            child: CustomSpecialtyCard(
              image: specs![index].imageUrl,
              docSpec: specs![index].name,
            ),
          );
        },
      ),
    );
  }
}
