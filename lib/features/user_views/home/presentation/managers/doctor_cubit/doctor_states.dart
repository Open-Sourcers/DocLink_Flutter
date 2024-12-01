import 'package:doc_link_project/core/models/doctor_model/doctor_data.dart';

abstract class DoctorStates {}

class GetAllDoctorsInitial extends DoctorStates {}

class GetAllDoctorsLoading extends DoctorStates {}

class GetAllDoctorsSuccess extends DoctorStates {
  final List<DoctorData>? doctors;
  GetAllDoctorsSuccess({this.doctors});
}

class GetAllDoctorsFailure extends DoctorStates {
  final String? errMessage;
  GetAllDoctorsFailure({this.errMessage});
}
