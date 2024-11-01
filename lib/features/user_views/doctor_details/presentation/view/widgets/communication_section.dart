import 'package:doc_link_project/core/utils/app_colors.dart';
import 'package:doc_link_project/core/utils/app_images.dart';
import 'package:doc_link_project/core/utils/styless.dart';
import 'package:doc_link_project/features/user_views/doctor_details/presentation/view/widgets/communication_section_item.dart';
import 'package:doc_link_project/generated/l10n.dart';
import 'package:flutter/material.dart';

class CommunicationSection extends StatelessWidget {
  const CommunicationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: Text(
            S.of(context).communications,
            style: Styless.textBold18.copyWith(color: AppColors.black),
          ),
        ),
        CommunicationSectionItem(
          title: S.of(context).messaging,
          subtitle: S.of(context).chatMe,
          leadingImage: AppImages.imagesMessagingIcon,
        ),
        CommunicationSectionItem(
          title: S.of(context).audioCall,
          subtitle: S.of(context).callDoctor,
          leadingImage: AppImages.imagesAudioCallIcon,
        ),
        CommunicationSectionItem(
          title: S.of(context).videoCall,
          subtitle: S.of(context).seeDoctor,
          leadingImage: AppImages.imagesVideoCallIcon,
        ),
      ],
    );
  }
}
