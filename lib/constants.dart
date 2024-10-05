import 'package:doc_link_project/core/utils/app_colors.dart';
import 'package:doc_link_project/core/utils/styless.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

const String spaceGrotesk = "SpaceGrotesk";

const Icon faceIcon = Icon(
  Icons.facebook,
  size: 30,
  color: AppColors.commonColor,
);
const Icon googleIcon = Icon(
  Icons.email_outlined,
  size: 30,
  color: AppColors.commonColor,
);

final defaultPinTheme = PinTheme(
  width: 60,
  height: 60,
  textStyle: Styless.textSemiBold20.copyWith(
    color:AppColors.commonColor
  ),
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(5),
    border: Border.all(
      color: const Color.fromARGB(255, 193, 190, 190),
    ),
  ),
);

final focusedPinTheme = defaultPinTheme.copyDecorationWith(
  border: Border.all(color: Colors.black),
);
