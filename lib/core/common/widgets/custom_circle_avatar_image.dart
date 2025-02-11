import 'package:doc_link_project/core/common/widgets/custom_cached_network_image.dart';
import 'package:doc_link_project/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CustomCircleAvatarImage extends StatelessWidget {
  final String? url;
  final String tempUrl =
      'https://www.shutterstock.com/image-vector/vector-flat-illustration-grayscale-avatar-600nw-2264922221.jpg';
  const CustomCircleAvatarImage({
    super.key,
    required this.radius,
    this.url,
  });
  final double radius;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius * 1.075,
      backgroundColor: AppColors.grey,
      child: CircleAvatar(
        radius: radius,
        backgroundImage: customCachedNetworkImageprovider(url ?? tempUrl),
      ),
    );
  }
}
