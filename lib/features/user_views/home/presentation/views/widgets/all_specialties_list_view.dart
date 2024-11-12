import 'package:doc_link_project/features/user_views/home/presentation/views/widgets/custom_specialty_card.dart';
import 'package:flutter/material.dart';

class AllSprcialtiesListView extends StatelessWidget {
  const AllSprcialtiesListView({super.key});

  final int itemCount = 5;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 170,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: itemCount,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(
              left: index == 0 ? 10.0 : 0,
              right: index == itemCount - 1 ? 10.0 : 0,
            ),
            child: const CustomSpecialtyCard(),
          );
        },
      ),
    );
  }
}
