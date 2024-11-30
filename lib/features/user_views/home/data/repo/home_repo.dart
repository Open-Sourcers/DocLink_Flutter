import 'package:dartz/dartz.dart';
import 'package:doc_link_project/core/models/doctor_model/doctor_data.dart';
import 'package:doc_link_project/core/models/speciality_model/speciality_data.dart';

abstract class HomeRepo {
  Future<Either<String?, List<DoctorData>?>> getAllDoctors();
  Future<Either<String?, List<SpecialityData>?>> getSpecialities();
}
