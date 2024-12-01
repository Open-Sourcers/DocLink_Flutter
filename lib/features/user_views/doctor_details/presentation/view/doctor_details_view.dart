import 'package:doc_link_project/core/common/widgets/custom_icon_button_container.dart';
import 'package:doc_link_project/core/common/widgets/custom_user_app_bar.dart';
import 'package:doc_link_project/core/utils/app_colors.dart';
import 'package:doc_link_project/features/user_views/doctor_details/presentation/view/widgets/doctor_details_view_body.dart';
import 'package:doc_link_project/features/user_views/home/data/models/doctor_model/doctor_data.dart';
import 'package:flutter/material.dart';

class DoctorDetailsView extends StatelessWidget {
  final DoctorData? doctorData;
  const DoctorDetailsView({super.key, this.doctorData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: customUserAppBar(
        context,
        showLeadingIcon: true,
        actions: [
          const CustomIconButtonContainer(child: Icon(Icons.more_vert_sharp)),
        ],
      ),
      body: DoctorDetailsViewBody(
        doctor: doctorData,
      ),
    );
  }
}
