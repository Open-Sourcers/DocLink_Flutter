import 'package:doc_link_project/core/common/widgets/custom_user_app_bar.dart';
import 'package:doc_link_project/core/utils/app_colors.dart';
import 'package:doc_link_project/features/user_views/new_appointment/presentation/views/widgets/new_appointment_view_body.dart';
import 'package:doc_link_project/generated/l10n.dart';
import 'package:flutter/material.dart';

class NewAppointmentView extends StatelessWidget {
  const NewAppointmentView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: customUserAppBar(
        context,
        showLeadingIcon: true,
        title: Text(S.of(context).newAppointment),
        centerTitle: true,
      ),
      body: const NewAppointmentViewBody(),
    );
  }
}
