import 'package:doc_link_project/core/app/bloc_observer.dart';
import 'package:doc_link_project/core/databases/cache/cache_helper.dart';
import 'package:doc_link_project/core/services/services_locator.dart';
import 'package:doc_link_project/doc_link_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  //observer
  Bloc.observer = AppBlocObserver();
  // enable shared_preferences
  setupServicesLocator();
  await getit<CacheHelper>().init();
  // this step used to set device not rotated
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitDown,
    DeviceOrientation.portraitUp,
  ]).then((_) {
    runApp(const DocLinkApp());
  });
}
