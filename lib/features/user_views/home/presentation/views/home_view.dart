import 'package:doc_link_project/core/common/widgets/custom_user_app_bar.dart';
import 'package:doc_link_project/core/utils/app_colors.dart';
import 'package:doc_link_project/core/utils/styless.dart';
import 'package:doc_link_project/features/user_views/home/presentation/views/widgets/home_view_body.dart';
import 'package:doc_link_project/generated/l10n.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: customUserAppBar(
          context,
          title: Text(
            "${S.of(context).welcomeUse} Mahmoud",
            style: Styless.textBold18.copyWith(
              color: AppColors.black,
            ),
          ),
        ),
        body: const HomeViewBody(),
      ),
    );
  }
}
