import 'package:doc_link_project/core/common/widgets/custom_icon_button_container.dart';
import 'package:doc_link_project/core/common/widgets/custom_user_app_bar.dart';
import 'package:doc_link_project/core/utils/app_colors.dart';
import 'package:doc_link_project/core/utils/app_images.dart';
import 'package:doc_link_project/features/user_views/home/presentation/views/widgets/all_doctors_view_body.dart';
import 'package:doc_link_project/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllDoctorsView extends StatelessWidget {
  const AllDoctorsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: customUserAppBar(
        context,
        showLeadingIcon: true,
        title: Text(S.of(context).doctors),
        centerTitle: true,
        actions: [
          CustomIconButtonContainer(
            child: SvgPicture.asset(AppImages.imagesFilterSearchIcon),
          )
        ],
      ),
      body: const AllDoctorsViewBody(),
    );
  }
}
