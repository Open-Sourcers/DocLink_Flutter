import 'package:dio/dio.dart';
import 'package:doc_link_project/core/api/dio_consumer.dart';
import 'package:doc_link_project/core/databases/cache/cache_helper.dart';
import 'package:doc_link_project/features/auth/data/repo/auth_repo_impl.dart';
import 'package:doc_link_project/features/auth/data/repo/forget_password_repo_impl.dart';
import 'package:doc_link_project/features/user_views/home/data/repo/home_repo_imple.dart';
import 'package:get_it/get_it.dart';

final getit = GetIt.instance;

void setupServicesLocator() {
  getit.registerSingleton<CacheHelper>(CacheHelper());
  getit.registerSingleton<Dio>(Dio());
  getit.registerSingleton<DioConsumer>(DioConsumer(dio: getit.get<Dio>()));
  getit.registerSingleton<AuthRepoImpl>(
      AuthRepoImpl(dioConsumer: getit.get<DioConsumer>()));
  getit.registerSingleton<ForgetPasswordRepoImpl>(
      ForgetPasswordRepoImpl(dioConsumer: getit.get<DioConsumer>()));
  getit.registerSingleton<HomeRepoImple>(
      HomeRepoImple(dio: getit.get<DioConsumer>()));
}
