import 'package:dartz/dartz.dart';
import 'package:doc_link_project/features/auth/data/models/auth_model/auth_model.dart';

abstract class AuthRepo {
  Future<Either<String, AuthModel>> register({
    required String firstName,
    required String lastName,
    required String email,
    required String password,
  });
}
