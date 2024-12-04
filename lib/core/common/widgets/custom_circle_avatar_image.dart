import 'package:doc_link_project/core/common/widgets/custom_cached_network_image.dart';
import 'package:doc_link_project/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CustomCircleAvatarImage extends StatelessWidget {
  final String? url;
  final String tempUrl =
      'https://r.search.yahoo.com/_ylt=AwrEtYb5DE9nhkEzFd6JzbkF;_ylu=c2VjA3NyBHNsawNpbWcEb2lkAzYyOTNhMTZhNTA1NGM1YTkyNDI1ZTk3YTM2ODg3MjNhBGdwb3MDMTcEaXQDYmluZw--/RV=2/RE=1733262714/RO=11/RU=https%3a%2f%2fwww.fotolia.com%2fid%2f96549226/RK=2/RS=l_pAGbcEhhiNAF9fqeSjC6YfgXs-';
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
