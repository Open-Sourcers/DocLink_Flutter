import 'package:doc_link_project/core/api/api_keys.dart';

class ErrorModel {
  int? statusCode;
  bool? data;
  String? responseMessage;
  int? totalCount;
  List<dynamic>? errors;

  ErrorModel({
    this.statusCode,
    this.data,
    this.responseMessage,
    this.totalCount,
    this.errors,
  });

  factory ErrorModel.fromJson(Map<String, dynamic> json) {
    return ErrorModel(
      statusCode: json[ApiKeys.statusCode] as int?,
      data: json[ApiKeys.data] as bool?,
      responseMessage: json[ApiKeys.responseMessage] as String?,
      totalCount: json[ApiKeys.totalCount] as int?,
      errors: json[ApiKeys.errors] as List<dynamic>?,
    );
  }
}
