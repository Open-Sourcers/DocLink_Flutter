import 'package:dartz/dartz.dart';
import 'package:doc_link_project/core/api/dio_consumer.dart';
import 'package:doc_link_project/core/api/end_points.dart';
import 'package:doc_link_project/core/models/doctor_model/doctor_model.dart';
import 'package:doc_link_project/features/user_views/doctor_details/data/repo/doctor_repo/doctor_repo.dart';
import 'package:flutter/material.dart';

class DoctorRepoImple extends DoctorRepo {
  final DioConsumer dio;

  DoctorRepoImple({required this.dio});
  @override
  Future<Either<String, DoctorModel>> getAllDoctors(
      BuildContext context) async {
    try {
      var response = await dio.get(EndPoints.getAllDoctors);
      DoctorModel model = DoctorModel.fromJson(response);
      return right(model);
    } catch (e) {
      return left(e.toString());
    }
  }
}
