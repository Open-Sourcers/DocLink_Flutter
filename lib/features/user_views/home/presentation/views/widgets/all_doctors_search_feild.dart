import 'package:doc_link_project/core/utils/app_colors.dart';
import 'package:doc_link_project/features/user_views/home/presentation/views/widgets/custom_search_feild.dart';
import 'package:flutter/material.dart';

class AllDoctorsSearchFeild extends StatelessWidget {
  const AllDoctorsSearchFeild({
    super.key,
    this.onChanged,
    this.suffixIcon,
    this.controller,
  });
  final Function(String)? onChanged;
  final Widget? suffixIcon;
  final TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      automaticallyImplyLeading: false,
      backgroundColor: AppColors.white,
      expandedHeight: 60,
      floating: false,
      pinned: true,
      toolbarHeight: 70,
      flexibleSpace: FlexibleSpaceBar(
        title: CustomSearchFeild(
          controller: controller,
          onChanged: onChanged,
          suffixIcon: suffixIcon,
        ),
        centerTitle: true,
        background: Container(color: AppColors.white),
        expandedTitleScale: 1.3,
      ),
    );
  }
}
