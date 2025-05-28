import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../features/auth/data/repo/auth_repo_impl.dart';
import '../../features/auth/data/repo/forget_password_repo_impl.dart';
import '../../features/user_views/home/data/repo/home_repo_imple.dart';
import '../api/dio_consumer.dart';
import '../databases/cache/cache_helper.dart';

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
