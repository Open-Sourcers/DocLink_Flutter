import 'package:dartz/dartz.dart';
import 'package:doc_link_project/features/user_views/home/data/models/doctor_model/doctor_data.dart';
import 'package:doc_link_project/features/user_views/home/data/models/speciality_model/speciality_data.dart';
import 'package:flutter/material.dart';

abstract class HomeRepo {
  Future<Either<String, List<DoctorData>>> getAllDoctors(
    BuildContext context,
  );
  Future<Either<String, List<SpecialityData>>> getSpecialities(
    BuildContext context,
  );
}
