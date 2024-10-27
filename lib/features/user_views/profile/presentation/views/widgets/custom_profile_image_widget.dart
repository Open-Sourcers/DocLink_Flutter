import 'package:doc_link_project/core/utils/app_colors.dart';
import 'package:doc_link_project/core/utils/app_images.dart';
import 'package:flutter/material.dart';

class ProfileImageWidget extends StatelessWidget {
  const ProfileImageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: CircleAvatar(
            radius: 70,
            child: ClipOval(
              child: Image.asset(
                AppImages.imagesProfImg,
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        Positioned(
          right: 120,
          top: 90,
          child: IconButton(
              onPressed: () {},
              icon: Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: AppColors.commonColor,
                ),
                child: const Icon(
                  Icons.edit,
                  size: 25,
                  color: Colors.white,
                ),
              )),
        )
      ],
    );
  }
}
