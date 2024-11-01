import 'package:doc_link_project/core/common/widgets/custom_button.dart';
import 'package:doc_link_project/core/utils/app_colors.dart';
import 'package:doc_link_project/features/user_views/schedule/presentation/views/widgets/custom_vertical_container.dart';
import 'package:flutter/material.dart';

class SchedualeViewHeader extends StatefulWidget {
  const SchedualeViewHeader({super.key});

  @override
  State<SchedualeViewHeader> createState() => _SchedualeViewHeaderState();
}

class _SchedualeViewHeaderState extends State<SchedualeViewHeader> {
  int currentItem = 0;
  @override
  Widget build(BuildContext context) {
    return CustomVerticalContainer(
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
              onPressed: () {
                currentItem = 0;
                setState(() {});
              },
              buttonTitle: 'Upcoming',
              backgroundColor:
                  currentItem == 0 ? AppColors.commonColor : AppColors.grey100,
              textColor: currentItem == 0 ? AppColors.white : AppColors.black,
            ),
          ),
          Expanded(
            child: CustomButton(
              onPressed: () {
                currentItem = 1;
                setState(() {});
              },
              buttonTitle: 'Completed',
              backgroundColor:
                  currentItem == 1 ? AppColors.commonColor : AppColors.grey100,
              textColor: currentItem == 1 ? AppColors.white : AppColors.black,
            ),
          ),
          Expanded(
            child: CustomButton(
              onPressed: () {
                currentItem = 2;
                setState(() {});
              },
              buttonTitle: 'canceled',
              backgroundColor:
                  currentItem == 2 ? AppColors.commonColor : AppColors.grey100,
              textColor: currentItem == 2 ? AppColors.white : AppColors.black,
            ),
          ),
        ],
      ),
    );
  }
}
