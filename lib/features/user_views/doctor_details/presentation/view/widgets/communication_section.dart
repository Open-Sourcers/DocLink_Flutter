import 'package:doc_link_project/core/utils/app_colors.dart';
import 'package:doc_link_project/core/utils/app_images.dart';
import 'package:doc_link_project/core/utils/styless.dart';
import 'package:doc_link_project/features/user_views/doctor_details/presentation/view/widgets/communication_section_item.dart';
import 'package:flutter/material.dart';

class CommunicationSection extends StatelessWidget {
  const CommunicationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            child: Text(
              "Communication",
              style: Styless.textBold18.copyWith(color: AppColors.black),
            ),
          ),
          const CommunicationSectionItem(
            title: 'Messaging',
            subtitle: 'Chat me up, share photos.',
            leadingImage: AppImages.imagesMessagingIcon,
          ),
          const CommunicationSectionItem(
            title: 'Audio Call',
            subtitle: 'call your doctor directly.',
            leadingImage: AppImages.imagesAudioCallIcon,
          ),
          const CommunicationSectionItem(
            title: 'Video Call',
            subtitle: 'See your doctor live.',
            leadingImage: AppImages.imagesVideoCallIcon,
          ),
        ],
      ),
    );
  }
}
