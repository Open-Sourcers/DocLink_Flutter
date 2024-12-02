// ignore_for_file: use_build_context_synchronously

import 'package:dartz/dartz.dart';
import 'package:doc_link_project/core/api/dio_consumer.dart';
import 'package:doc_link_project/core/api/end_points.dart';
import 'package:doc_link_project/core/error/exception.dart';
import 'package:doc_link_project/core/utils/function/check_interner_connection.dart';
import 'package:doc_link_project/features/user_views/home/data/models/doctor_model/doctor_data.dart';
import 'package:doc_link_project/features/user_views/home/data/models/doctor_model/doctor_model.dart';
import 'package:doc_link_project/features/user_views/home/data/models/speciality_model/speciality_data.dart';
import 'package:doc_link_project/features/user_views/home/data/models/speciality_model/speciality_model.dart';
import 'package:doc_link_project/features/user_views/home/data/repo/home_repo.dart';
import 'package:doc_link_project/generated/l10n.dart';
import 'package:flutter/material.dart';

class HomeRepoImple extends HomeRepo {
  final DioConsumer dio;

  HomeRepoImple({required this.dio});
  @override
  Future<Either<String, List<DoctorData>>> getAllDoctors(
    BuildContext context,
  ) async {
    bool isConnected = await checkInternetConnection();
    if (!isConnected) {
      return left(S.of(context).internetRequired);
    }
    try {
      final response = await dio.get(EndPoints.getAllDoctors);
      DoctorModel model = DoctorModel.fromJson(response);
      if (model.statusCode == 200) {
        return right(model.data!);
      } else {
        return left(
          model.responseMessage ?? model.errors?[0] ?? S.of(context).authError,
        );
      }
    } on ServerException catch (e) {
      return left(
        e.errorModel.responseMessage ??
            e.errorModel.errors?[0] ??
            S.of(context).authError,
      );
    }
  }

  @override
  Future<Either<String, List<SpecialityData>>> getSpecialities(
    BuildContext context,
  ) async {
    bool isConnected = await checkInternetConnection();
    if (!isConnected) {
      return left(S.of(context).internetRequired);
    }
    try {
      final response = await dio.get(EndPoints.getSpecialities);
      SpecialityModel model = SpecialityModel.fromJson(response);
      if (model.statusCode == 200) {
        return right(model.data!);
      } else {
        return left(
          model.responseMessage ?? model.errors?[0] ?? S.of(context).authError,
        );
      }
    } on ServerException catch (e) {
      return left(
        e.errorModel.responseMessage ??
            e.errorModel.errors?[0] ??
            S.of(context).authError,
      );
    }
  }
}
