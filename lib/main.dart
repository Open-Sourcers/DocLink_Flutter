import 'package:doc_link_project/core/databases/cache/cache_helper.dart';
import 'package:doc_link_project/doc_link_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // enable shared_preferences
  CacheHelper.instant.init();
  // this step used to set device not rotated
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitDown,
    DeviceOrientation.portraitUp,
  ]).then((_) {
    runApp(const DocLinkApp());
  });
}
