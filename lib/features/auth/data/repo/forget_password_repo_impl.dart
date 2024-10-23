// ignore_for_file: use_build_context_synchronously

import 'package:dartz/dartz.dart';
import 'package:doc_link_project/core/api/api_keys.dart';
import 'package:doc_link_project/core/api/dio_consumer.dart';
import 'package:doc_link_project/core/api/end_points.dart';
import 'package:doc_link_project/core/error/exception.dart';
import 'package:doc_link_project/features/auth/data/models/auth_model/auth_model.dart';
import 'package:doc_link_project/features/auth/data/repo/forget_password_repo.dart';
import 'package:doc_link_project/generated/l10n.dart';
import 'package:flutter/material.dart';

class ForgetPasswordRepoImpl implements ForgetPasswordRepo {
  final DioConsumer dioConsumer;

  ForgetPasswordRepoImpl({required this.dioConsumer});

  @override
  Future<Either<String, AuthModel>> sendOtpToEmail(BuildContext context,
      {required String email}) async {
    try {
      final response = await dioConsumer.post(EndPoints.forgetPassword, data: {
        ApiKeys.email: email,
      });
      AuthModel authModel = AuthModel.fromJson(response);
      if (authModel.statusCode == 200) {
        return right(authModel);
      }
      return left(authModel.message ?? S.of(context).authError);
    } on ServerException catch (e) {
      return left(e.errorModel.message ?? S.of(context).authError);
    }
  }

  @override
  Future<Either<String, AuthModel>> verifyAccount(BuildContext context,
      {required String email, required String otp}) async {
    try {
      final response = await dioConsumer.post(EndPoints.verifyAccount, data: {
        ApiKeys.email: email,
        ApiKeys.otp: otp,
      });
      AuthModel authModel = AuthModel.fromJson(response);
      if (authModel.statusCode == 200) {
        return right(authModel);
      }
      return left(authModel.message ?? S.of(context).authError);
    } on ServerException catch (e) {
      return left(e.errorModel.message ?? S.of(context).authError);
    }
  }

  @override
  Future<Either<String, AuthModel>> resetPassword(BuildContext context,
      {required String email,
      required String token,
      required String newPassword,
      required String passwordComfirmation}) async {
    try {
      final response = await dioConsumer.put(EndPoints.resetPassword, data: {
        ApiKeys.email: email,
        ApiKeys.token: token,
        ApiKeys.newPassword: newPassword,
        ApiKeys.passwordComfirmation: passwordComfirmation,
      });
      AuthModel authModel = AuthModel.fromJson(response);
      if (authModel.statusCode == 200) {
        return right(authModel);
      }
      return left(authModel.message ?? S.of(context).authError);
    } on ServerException catch (e) {
      return left(e.errorModel.message ?? S.of(context).authError);
    }
  }
}
