import 'package:doc_link_project/generated/l10n.dart';
import 'package:flutter/material.dart';

String? validatorOfEmail(BuildContext context, {String? value}) {
  // Define the regex pattern for email validation
  String pattern = r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$';
  RegExp regex = RegExp(pattern);

  // Check if the email is null or empty
  if (value == null || value.isEmpty) {
    return S.of(context).pleaseEnterYouremail;
  } else if (!regex.hasMatch(value)) {
    return S.of(context).pleaseEnterValidemail;
  }
  return null;
}

String? validatorOfPassword(BuildContext context, {String? value}) {
  RegExp regex =
      RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
  if (value == null || value.isEmpty) {
    return S.of(context).enterPassword;
  } else if (value.length < 8) {
    return S.of(context).sizeOfPassword;
  } else {
    if (!regex.hasMatch(value)) {
      return S.of(context).enterValidPassword;
    } else {
      return null;
    }
  }
}

// String? validUserName(String? value) {
//   bool upper = value!.contains(RegExp(r'[A-Z]'));
//   bool lower = value.contains(RegExp(r'[a-z]'));
//   bool underScore = value.contains('_');
//   if (upper && lower && underScore) {
//     return null;
//   } else {
//     return 'should contain at least one upper case , lower caser \nand under score';
//   }
// }

// String? vailEgyptionPhone(String? value) {
//   RegExp regex = RegExp(r'^01([0-9]{9})$');
//   if (value == null || value.isEmpty) {
//     return 'Please enter phone number';
//   } else if (!regex.hasMatch(value)) {
//     return 'Enter a valid Egyptian phone number';
//   }
//   return null;
// }
