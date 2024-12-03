import 'package:dartz/dartz.dart';
import 'package:doc_link_project/features/user_views/home/data/models/doctor_model/doctor_model.dart';
import 'package:flutter/material.dart';

abstract class DoctorRepo {
  Future<Either<String, DoctorModel>> getAllDoctors(BuildContext context);
}
