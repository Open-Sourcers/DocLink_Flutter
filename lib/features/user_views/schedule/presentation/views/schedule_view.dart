import 'package:doc_link_project/core/common/widgets/custom_user_app_bar.dart';
import 'package:doc_link_project/core/utils/app_colors.dart';
import 'package:doc_link_project/core/utils/styless.dart';
import 'package:doc_link_project/features/user_views/schedule/presentation/views/widgets/schedule_view_body.dart';
import 'package:doc_link_project/generated/l10n.dart';
import 'package:flutter/material.dart';

class ScheduleView extends StatelessWidget {
  const ScheduleView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customUserAppBar(
        context,
        centerTitle: true,
        title: Text(
          S.of(context).schedule,
          style: Styless.textBold25.copyWith(color: AppColors.commonColor),
        ),
      ),
      body: const ScheduleViewBody(),
    );
  }
}
