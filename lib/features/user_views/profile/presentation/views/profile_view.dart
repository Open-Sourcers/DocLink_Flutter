import 'package:doc_link_project/core/utils/app_colors.dart';
import 'package:doc_link_project/core/utils/styless.dart';
import 'package:doc_link_project/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'widgets/profile_view_body.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(color: Colors.white),
        title: Text(
          S.of(context).myProf,
          style: Styless.textSemiBold20.copyWith(color: AppColors.commonColor),
        ),
        centerTitle: true,
      ),
      body: const ProfileViewBody(),
    );
  }
}
