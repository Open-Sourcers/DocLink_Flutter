// ignore_for_file: use_build_context_synchronously

import 'package:dartz/dartz.dart';
import 'package:doc_link_project/core/api/api_keys.dart';
import 'package:doc_link_project/core/api/dio_consumer.dart';
import 'package:doc_link_project/core/api/end_points.dart';
import 'package:doc_link_project/core/databases/cache/cache_helper.dart';
import 'package:doc_link_project/core/error/exception.dart';
import 'package:doc_link_project/core/services/services_locator.dart';
import 'package:doc_link_project/features/auth/data/models/auth_model/auth_model.dart';
import 'package:doc_link_project/features/auth/data/repo/auth_repo.dart';
import 'package:doc_link_project/generated/l10n.dart';
import 'package:flutter/material.dart';

class AuthRepoImpl implements AuthRepo {
  final DioConsumer dioConsumer;

  AuthRepoImpl({required this.dioConsumer});

  @override
  Future<Either<String, AuthModel>> register(BuildContext context,
      {required String firstName,
      required String lastName,
      required String email,
      required String password}) async {
    try {
      final response = await dioConsumer.post(EndPoints.register, data: {
        ApiKeys.firstName: firstName,
        ApiKeys.lastName: lastName,
        ApiKeys.email: email,
        ApiKeys.password: password,
      });
      AuthModel authModel = AuthModel.fromJson(response);
      if (authModel.statusCode == 200) {
        cachedTokenInLocalStorage(authModel);
        return right(authModel);
      }
      return left(authModel.message ?? S.of(context).authError);
    } on ServerException catch (e) {
      return left(e.errorModel.message ?? S.of(context).authError);
    }
  }

  void cachedTokenInLocalStorage(AuthModel authModel) {
    getit<CacheHelper>().setString(ApiKeys.token, authModel.data!.token!);
  }

  @override
  Future<Either<String, AuthModel>> login(BuildContext context,
      {required String email, required String password}) async {
    try {
      final response = await dioConsumer.post(EndPoints.login, data: {
        ApiKeys.email: email,
        ApiKeys.password: password,
      });
      AuthModel authModel = AuthModel.fromJson(response);
      if (authModel.statusCode == 200) {
        cachedTokenInLocalStorage(authModel);
        return right(authModel);
      }
      return left(authModel.message ?? S.of(context).authError);
    } on ServerException catch (e) {
      return left(e.errorModel.message ?? S.of(context).authError);
    }
  }
  
  @override
  void logout() {
    getit<CacheHelper>().removePreference(ApiKeys.token);
  }
}
