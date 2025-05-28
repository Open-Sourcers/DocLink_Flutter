import 'package:doc_link_project/core/utils/app_colors.dart';
import 'package:doc_link_project/core/utils/app_images.dart';
import 'package:doc_link_project/core/utils/styless.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';

enum ToastMessageType { error, info, success, warning }

abstract class ToastHelper {
  static final FToast _fToast = FToast();
  static const Duration _fadeDuration = Duration(seconds: 1);
  static const Duration _toastDuration = Duration(seconds: 5);

  /// Initialize FToast once
  static void init(BuildContext context) {
    _fToast.init(context);
  }

  /// Clear current and queued toasts
  static void clearToasts() {
    _fToast.removeCustomToast();
    _fToast.removeQueuedCustomToasts();
  }

  /// Show bottom-positioned toast
  static void showBottomToast(
    BuildContext context, {
    required String message,
    required ToastMessageType type,
  }) {
    _showToast(context, message: message, type: type, isTop: false);
  }

  /// Show top-positioned toast
  static void showTopToast(
    BuildContext context, {
    required String message,
    required ToastMessageType type,
  }) {
    _showToast(context, message: message, type: type, isTop: true);
  }

  /// Internal reusable method to show a toast
  static void _showToast(
    BuildContext context, {
    required String message,
    required ToastMessageType type,
    required bool isTop,
  }) {
    init(context);

    _fToast.showToast(
      fadeDuration: _fadeDuration,
      toastDuration: _toastDuration,
      gravity: isTop ? ToastGravity.TOP : ToastGravity.BOTTOM,
      positionedToastBuilder: (context, child, _) {
        return Positioned(
          top: isTop ? 75 : null,
          bottom: isTop ? null : 75,
          left: 0,
          right: 0,
          child: child,
        );
      },
      child: _buildToastContent(context, message, type),
    );
  }

  /// Builds the toast widget
  static Widget _buildToastContent(
    BuildContext context,
    String message,
    ToastMessageType type,
  ) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 3.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        color: AppColors.white,
      ),
      child: ListTile(
        leading: SvgPicture.asset(_getToastIcon(type)),
        title: Text(
          message,
          style: Styless.textSemiBold14.copyWith(color: AppColors.black),
        ),
      ),
    );
  }

  /// Maps enum to toast icons
  static String _getToastIcon(ToastMessageType type) {
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
}
