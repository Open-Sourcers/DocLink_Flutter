import 'package:doc_link_project/core/api/api_keys.dart';


class ForgetPasswordModel {
  int? statusCode;
  String? message;
  dynamic errors;
  String? data;

  ForgetPasswordModel({this.statusCode, this.message, this.errors, this.data});

  factory ForgetPasswordModel.fromJson(Map<String, dynamic> json) => ForgetPasswordModel(
        statusCode: json[ApiKeys.statusCode] as int?,
        message: json[ApiKeys.message] as String?,
        errors: json[ApiKeys.errors] as dynamic,
        data: json[ApiKeys.data] as String,
      );

  Map<String, dynamic> toJson() => {
        ApiKeys.statusCode: statusCode,
        ApiKeys.message: message,
        ApiKeys.errors: errors,
        ApiKeys.data: data,
      };
}
