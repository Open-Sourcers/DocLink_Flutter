import 'package:doc_link_project/core/utils/app_colors.dart';
import 'package:doc_link_project/core/utils/styless.dart';
import 'package:doc_link_project/features/user_views/home/presentation/views/widgets/all_specialties_list_view.dart';
import 'package:doc_link_project/generated/l10n.dart';
import 'package:flutter/material.dart';

class AllSpecialtiesSection extends StatelessWidget {
  const AllSpecialtiesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 18),
          width: double.infinity,
          child: Text(
            '${S.of(context).specialties} 🐽👀',
            style: Styless.textBold18.copyWith(color: AppColors.black),
          ),
        ),
        const SizedBox(height: 10),
        const AllSprcialtiesListView(),
      ],
    );
  }
}
