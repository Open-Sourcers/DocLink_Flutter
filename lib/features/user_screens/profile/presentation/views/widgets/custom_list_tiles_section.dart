import 'package:doc_link_project/core/utils/app_images.dart';
import 'package:doc_link_project/features/user_screens/profile/presentation/views/widgets/custom_list_tile_widget.dart';
import 'package:doc_link_project/generated/l10n.dart';
import 'package:flutter/material.dart';

class CustomListTilesSection extends StatelessWidget {
  const CustomListTilesSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomListTileWidget(
          txt: S.of(context).prof,
          imagePath: AppImages.imagesProfileIconSettings,
          onPressed: () {},
        ),
        const SizedBox(height: 10),
        CustomListTileWidget(
          txt: S.of(context).payment,
          imagePath: AppImages.imagesPaymentProfSettings,
          onPressed: () {},
        ),
        const SizedBox(height: 10),
        CustomListTileWidget(
          txt: S.of(context).privacy,
          imagePath: AppImages.imagesPrivacySettings,
          onPressed: () {},
        ),
        const SizedBox(height: 10),
        CustomListTileWidget(
          txt: S.of(context).settings,
          imagePath: AppImages.imagesSettings,
          onPressed: () {},
        ),
        const SizedBox(height: 10),
        CustomListTileWidget(
          txt: S.of(context).help,
          imagePath: AppImages.imagesHelp,
          onPressed: () {},
        ),
        const SizedBox(height: 10),
        CustomListTileWidget(
          txt: S.of(context).logOut,
          imagePath: AppImages.imagesLogout,
          onPressed: () {},
        ),
      ],
    );
  }
}
