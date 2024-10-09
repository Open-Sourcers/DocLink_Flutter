
import 'package:doc_link_project/core/api/api_keys.dart';

class ErrorModel {
  final int statstatusCodeus;
  final dynamic message;

  ErrorModel({required this.statstatusCodeus, required this.message});

  factory ErrorModel.fromJson(Map<String, dynamic> json) {
    return ErrorModel(
      statstatusCodeus: json[ApiKeys.statusCode],
      message: json[ApiKeys.message],
    );
  }
}
