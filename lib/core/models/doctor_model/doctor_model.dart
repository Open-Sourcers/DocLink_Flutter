import 'doctor_data.dart';

class DoctorModel {
  int? statusCode;
  DoctorData? data;
  String? responseMessage;
  int? totalCount;
  List<String>? errors;

  DoctorModel({
    this.statusCode,
    this.data,
    this.responseMessage,
    this.totalCount,
    this.errors,
  });

  factory DoctorModel.fromJson(Map<String, dynamic> json) => DoctorModel(
        statusCode: json['statusCode'] as int?,
        data: json['data'] == null
            ? null
            : DoctorData.fromJson(json['data'] as Map<String, dynamic>),
        responseMessage: json['responseMessage'] as String?,
        totalCount: json['totalCount'] as int?,
        errors: json['errors'] as List<String>?,
      );

  Map<String, dynamic> toJson() => {
        'statusCode': statusCode,
        'data': data?.toJson(),
        'responseMessage': responseMessage,
        'totalCount': totalCount,
        'errors': errors,
      };
}
