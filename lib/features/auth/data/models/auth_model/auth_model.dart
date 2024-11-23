import 'package:doc_link_project/core/api/api_keys.dart';

import 'data.dart';

class AuthModel {
  int? statusCode;
  String? responseMessage;
  dynamic errors;
  Data? data;

  AuthModel({this.statusCode, this.responseMessage, this.errors, this.data});

  factory AuthModel.fromJson(Map<String, dynamic> json) => AuthModel(
        statusCode: json[ApiKeys.statusCode] as int?,
        responseMessage: json[ApiKeys.responseMessage] as String?,
        errors: json[ApiKeys.errors] as dynamic,
        data: json[ApiKeys.data] == null
            ? null
            : Data.fromJson(json[ApiKeys.data] as Map<String, dynamic>),
      );
}
