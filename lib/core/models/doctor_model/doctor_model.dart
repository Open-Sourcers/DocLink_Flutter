import 'package:doc_link_project/core/api/api_keys.dart';

import 'doctor_data.dart';

class DoctorModel {
  int? statusCode;
  List<DoctorData>? data;
  String? responseMessage;
  int? totalCount;
  List<dynamic>? errors;

  DoctorModel({
    this.statusCode,
    this.data,
    this.responseMessage,
    this.totalCount,
    this.errors,
  });

  factory DoctorModel.fromJson(Map<String, dynamic> json) => DoctorModel(
        statusCode: json[ApiKeys.statusCode] as int?,
        data: allDoctors(json['data']),
        responseMessage: json[ApiKeys.responseMessage] as String?,
        totalCount: json[ApiKeys.totalCount] as int?,
        errors: json[ApiKeys.errors] as List<dynamic>?,
      );

  Map<String, dynamic> toJson() => {
        ApiKeys.statusCode: statusCode,
        ApiKeys.data: data,
        ApiKeys.responseMessage: responseMessage,
        ApiKeys.totalCount: totalCount,
        ApiKeys.errors: errors,
      };
}

List<DoctorData> allDoctors(jsonData) {
  List<DoctorData> data = [];
  for (var i = 0; i < jsonData.length; i++) {
    DoctorData doctor = DoctorData.fromJson(jsonData[i]);
    data.add(doctor);
  }
  return data;
}
