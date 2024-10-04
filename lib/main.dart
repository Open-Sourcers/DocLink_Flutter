import 'package:doc_link_project/core/utils/app_colors.dart';
import 'package:doc_link_project/features/splash/presentation/views/splash_view.dart';
import 'package:doc_link_project/generated/l10n.dart';
import 'package:doc_link_project/features/app/presentation/doc_link_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Future<void> main() async {
  // this step used to set device not rotated
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitDown,
    DeviceOrientation.portraitUp,
  ]).then((_) {
    runApp(const DocLinkApp());
  });
}
