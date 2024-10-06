import 'package:doc_link_project/doc_link_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  // this step used to set device not rotated
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitDown,
    DeviceOrientation.portraitUp,
  ]).then((_) {
    runApp(const DocLinkApp());
  });
}
