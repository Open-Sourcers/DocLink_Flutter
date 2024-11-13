import 'package:doc_link_project/core/utils/app_images.dart';
import 'package:doc_link_project/features/user_views/schedule/presentation/views/widgets/custom_calender_and_time_item.dart';
import 'package:doc_link_project/features/user_views/schedule/presentation/views/widgets/custom_vertical_container.dart';
import 'package:flutter/material.dart';

class CustomCalenderAndTimeSection extends StatelessWidget {
  const CustomCalenderAndTimeSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomVerticalContainer(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomCalenderAndTimeItem(
              image: AppImages.imagesCalendarSvg,
              dateOrTime: "Mon,Aug 29",
            ),
            CustomCalenderAndTimeItem(
              image: AppImages.imagesClock,
              dateOrTime: "10:00-12:00 PM",
            ),
          ],
        ),
      ),
    );
  }
}
