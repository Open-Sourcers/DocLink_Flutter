import 'package:doc_link_project/features/user_views/home/data/models/speciality_model/speciality_data.dart';

class SpecialityModel {
  int? statusCode;
  List<SpecialityData>? data;
  String? responseMessage;
  num? totalCount;
  List<dynamic>? errors;

  SpecialityModel({
    this.statusCode,
    this.data,
    this.responseMessage,
    this.totalCount,
    this.errors,
  });

  factory SpecialityModel.fromJson(jsonData) => SpecialityModel(
        statusCode: jsonData['statusCode'] as int?,
        data: allSpecialities(jsonData['data']) as List<SpecialityData>?,
        responseMessage: jsonData['responseMessage'] as String?,
        totalCount: jsonData['totalCount'] as num?,
        errors: jsonData['errors'] as List<dynamic>?,
      );
}

List<SpecialityData> allSpecialities(jsonData) {
  List<SpecialityData> specialities = [];
  for (var i = 0; i < jsonData.length; i++) {
    SpecialityData spec = SpecialityData.fromJson(jsonData[i]);
    specialities.add(spec);
  }
  return specialities;
}
