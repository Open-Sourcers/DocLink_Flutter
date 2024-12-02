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
        data: (json['data'] as List<dynamic>?)
                ?.map((e) => DoctorData.fromJson(e as Map<String, dynamic>))
                .toList() ??
            [], // Default to empty list
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
