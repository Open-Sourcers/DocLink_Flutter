abstract class DoctorsStates {}

// # Get All Doctors
class GetAllDoctorsInitial extends DoctorsStates {}

class GetAllDoctorsLoading extends DoctorsStates {}

class GetAllDoctorsSuccess extends DoctorsStates {}

class GetAllDoctorsFailure extends DoctorsStates {
  final String errMessage;

  GetAllDoctorsFailure({required this.errMessage});
}
