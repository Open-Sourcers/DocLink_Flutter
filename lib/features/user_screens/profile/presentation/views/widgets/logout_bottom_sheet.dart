
import 'package:doc_link_project/features/user_screens/profile/presentation/views/widgets/logout_bottom_sheet_body.dart';
import 'package:flutter/material.dart';

Future<dynamic> logoutBottomSheet(BuildContext context) {
  return showModalBottomSheet(
    context: context,
    builder: (context) {
      return const LogoutBottomSheetBody();
    },
  );
}
