import 'package:doc_link_project/core/utils/app_images.dart';
import 'package:flutter/material.dart';

class HomeAdvertisementsSection extends StatelessWidget {
  const HomeAdvertisementsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: MediaQuery.sizeOf(context).height * 0.5,
        width: double.infinity,
        child: Flexible(
            child: Image.asset(
          AppImages.imagesAdvertisementCovid19,
          fit: BoxFit.fill,
        )));
  }
}
