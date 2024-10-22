import 'package:dartz/dartz.dart';
import 'package:doc_link_project/features/auth/data/models/forget_password_model.dart';
import 'package:flutter/material.dart';

abstract class ForgetPasswordRepo {
  Future<Either<String, ForgetPasswordModel>> sendOtpToEmail(
    BuildContext context, {
    required String email,
  });
  // verify account
  Future<Either<String, ForgetPasswordModel>> verifyAccount(
    BuildContext context, {
    required String email,
    required String otp,
  });
}
