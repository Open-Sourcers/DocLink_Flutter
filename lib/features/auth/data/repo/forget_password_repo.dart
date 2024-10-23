import 'package:dartz/dartz.dart';
import 'package:doc_link_project/features/auth/data/models/auth_model/auth_model.dart';
import 'package:flutter/material.dart';

abstract class ForgetPasswordRepo {
  Future<Either<String, AuthModel>> sendOtpToEmail(
    BuildContext context, {
    required String email,
  });
  // verify account
  Future<Either<String, AuthModel>> verifyAccount(
    BuildContext context, {
    required String email,
    required String otp,
  });
  //reset password
  Future<Either<String, AuthModel>> resetPassword(
    BuildContext context, {
    required String email,
    required String token,
    required String newPassword,
    required String passwordComfirmation,
  });
}
