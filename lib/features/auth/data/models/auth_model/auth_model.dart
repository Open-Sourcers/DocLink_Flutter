import 'package:doc_link_project/core/api/api_keys.dart';

import 'data.dart';

class AuthModel {
  int? statusCode;
  String? message;
  dynamic errors;
  Data? data;

  AuthModel({this.statusCode, this.message, this.errors, this.data});

  factory AuthModel.fromJson(Map<String, dynamic> json) => AuthModel(
        statusCode: json[ApiKeys.statusCode] as int?,
        message: json[ApiKeys.message] as String?,
        errors: json[ApiKeys.errors] as dynamic,
        data: json[ApiKeys.data] == null
            ? null
            : Data.fromJson(json['data'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'statusCode': statusCode,
        'message': message,
        'errors': errors,
        'data': data?.toJson(),
      };
}
