import 'package:doc_link_project/core/utils/app_colors.dart';
import 'package:doc_link_project/core/utils/app_images.dart';
import 'package:doc_link_project/core/utils/styless.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertoast/fluttertoast.dart';

Duration fadeDuration = const Duration(seconds: 1);
Duration toastDuration = const Duration(seconds: 5);

FToast fToast = FToast();
void removeAllToast() {
  // To remove present shwoing toast
  fToast.removeCustomToast();
  // To clear the queue
  fToast.removeQueuedCustomToasts();
}

void customBottomToastMessage(
  BuildContext context, {
  required String msg,
  required ToastMessageType type,
}) {
  fToast.init(context);
  return fToast.showToast(
    fadeDuration: fadeDuration,
    toastDuration: toastDuration,
    child: _buildToast(context, msg: msg, type: type),
    gravity: ToastGravity.BOTTOM,
    positionedToastBuilder: (context, child) =>
        Positioned(bottom: 75, right: 0, left: 0, child: child),
  );
}

void customTopToastMessage(
  BuildContext context, {
  required String msg,
  required ToastMessageType type,
}) {
  fToast.init(context);
  return fToast.showToast(
    fadeDuration: fadeDuration,
    toastDuration: toastDuration,
    child: _buildToast(context, msg: msg, type: type),
    gravity: ToastGravity.TOP,
    positionedToastBuilder: (context, child) =>
        Positioned(top: 75, right: 0, left: 0, child: child),
  );
}

String _toastImage(ToastMessageType type) {
  switch (type) {
    case ToastMessageType.error:
      return AppImages.imagesError;
    case ToastMessageType.info:
      return AppImages.imagesInfo;
    case ToastMessageType.success:
      return AppImages.imagesSuccess;
    case ToastMessageType.warning:
      return AppImages.imagesWarning;
  }
}

Widget _buildToast(
  BuildContext context, {
  required String msg,
  required ToastMessageType type,
}) {
  return Container(
    width: MediaQuery.sizeOf(context).width * 0.9,
    padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 3.0),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12.0),
      color: AppColors.white,
    ),
    child: ListTile(
      title: Text(msg,
          style: Styless.textSemiBold14.copyWith(color: AppColors.black)),
      leading: SvgPicture.asset(_toastImage(type)),
    ),
  );
}

enum ToastMessageType { error, info, success, warning }
