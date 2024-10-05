import 'package:doc_link_project/core/utils/app_images.dart';
import 'package:flutter/material.dart';

BoxDecoration decorationAppMethod() {
  return const BoxDecoration(
    image: DecorationImage(
      image: AssetImage(AppImages.imagesObjects),
      fit: BoxFit.cover,
    ),
  );
}
