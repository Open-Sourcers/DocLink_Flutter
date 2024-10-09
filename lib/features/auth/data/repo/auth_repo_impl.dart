import 'package:dartz/dartz.dart';
import 'package:doc_link_project/core/api/api_keys.dart';
import 'package:doc_link_project/core/api/dio_consumer.dart';
import 'package:doc_link_project/core/api/end_points.dart';
import 'package:doc_link_project/core/error/exception.dart';
import 'package:doc_link_project/features/auth/data/models/auth_model/auth_model.dart';
import 'package:doc_link_project/features/auth/data/repo/auth_repo.dart';

class AuthRepoImpl implements AuthRepo {
  final DioConsumer dioConsumer;

  AuthRepoImpl({required this.dioConsumer});

  @override
  Future<Either<String, AuthModel>> register(
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
        return right(authModel);
      }
      return left(authModel.message ?? "there was an error please try agsin");
    } on ServerException catch (e) {
      return left(e.errorModel.message ?? "there was an error please try agsin");
    }
  }

  @override
  Future<Either<String, AuthModel>> login(
      {required String email, required String password}) async {
    try {
      final response = await dioConsumer.post(EndPoints.login, data: {
        ApiKeys.email: email,
        ApiKeys.password: password,
      });
      AuthModel authModel = AuthModel.fromJson(response);
      if (authModel.statusCode == 200) {
        return right(authModel);
      }
      return left(authModel.message ?? "there was an error please try agsin");
    } on ServerException catch (e) {
      return left(e.errorModel.message ?? "there was an error please try agsin");
    }
  }
}
