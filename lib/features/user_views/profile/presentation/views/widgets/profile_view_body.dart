import 'package:doc_link_project/core/utils/styless.dart';
import 'package:doc_link_project/features/user_views/profile/presentation/views/widgets/custom_list_tiles_section.dart';
import 'package:flutter/material.dart';
import 'custom_profile_image_widget.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ProfileImageWidget(),
        SizedBox(height: 35),
        Text(
          'Ziad Salah',
          style: Styless.textBold25,
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 50),
        CustomListTilesSection(),
      ],
    );
  }
}
