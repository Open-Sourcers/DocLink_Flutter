import 'package:doc_link_project/core/databases/cache/cache_helper.dart';
import 'package:get_it/get_it.dart';

final getit = GetIt.instance;

void setupServicesLocator() {
  getit.registerSingleton<CacheHelper>(CacheHelper());
}
