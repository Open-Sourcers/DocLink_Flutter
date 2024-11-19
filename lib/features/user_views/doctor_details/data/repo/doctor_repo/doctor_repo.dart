import 'package:dartz/dartz.dart';
import 'package:doc_link_project/core/models/doctor_model/doctor_model.dart';
import 'package:flutter/material.dart';

abstract class DoctorRepo {
  Future<Either<String, DoctorModel>> getAllDoctors(BuildContext context);
}
