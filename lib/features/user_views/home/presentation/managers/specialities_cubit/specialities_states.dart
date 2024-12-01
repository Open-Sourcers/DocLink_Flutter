import 'package:doc_link_project/core/models/speciality_model/speciality_data.dart';

abstract class SpecialitiesStates {}

class GetAllSpecInitial extends SpecialitiesStates {}

class GetAllSpecLoading extends SpecialitiesStates {}

class GetAllSpecSuccess extends SpecialitiesStates {
  final List<SpecialityData>? specialities;
  GetAllSpecSuccess({this.specialities});
}

class GetAllSpecFailure extends SpecialitiesStates {
  final String? errMessage;
  GetAllSpecFailure({this.errMessage});
}
