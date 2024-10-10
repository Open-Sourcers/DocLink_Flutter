import 'package:dio/dio.dart';
import 'package:doc_link_project/core/api/dio_consumer.dart';
import 'package:doc_link_project/core/databases/cache/cache_helper.dart';
import 'package:doc_link_project/features/auth/data/repo/auth_repo_impl.dart';
import 'package:get_it/get_it.dart';

final getit = GetIt.instance;

void setupServicesLocator() {
  getit.registerSingleton<CacheHelper>(CacheHelper());
  getit.registerSingleton<Dio>(Dio());
  getit.registerSingleton<DioConsumer>(DioConsumer(dio: getit.get<Dio>()));
  getit.registerSingleton<AuthRepoImpl>(
      AuthRepoImpl(dioConsumer: getit.get<DioConsumer>()));
}
