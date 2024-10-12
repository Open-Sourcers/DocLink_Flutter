import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:doc_link_project/features/auth/data/models/auth_model/auth_model.dart';

abstract class AuthRepo {
  Future<Either<String, AuthModel>> register(
    BuildContext context, {
    required String firstName,
    required String lastName,
    required String email,
    required String password,
  });
  Future<Either<String, AuthModel>> login(
    BuildContext context, {
    required String email,
    required String password,
  });

  Future<Either<String, AuthModel>> sendOtpToEmail(
    BuildContext context, {
    required String email,
  });
}
