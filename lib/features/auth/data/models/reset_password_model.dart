class ResetPasswordModel {
  int? statusCode;
  bool? data;
  String? responseMessage;
  int? totalCount;
  List<dynamic>? errors;

  ResetPasswordModel({
    this.statusCode,
    this.data,
    this.responseMessage,
    this.totalCount,
    this.errors,
  });

  factory ResetPasswordModel.fromJson(Map<String, dynamic> json) {
    return ResetPasswordModel(
      statusCode: json['statusCode'] as int?,
      data: json['data'] as bool?,
      responseMessage: json['responseMessage'] as String?,
      totalCount: json['totalCount'] as int?,
      errors: json['errors'] as List<dynamic>?,
    );
  }

  Map<String, dynamic> toJson() => {
        'statusCode': statusCode,
        'data': data,
        'responseMessage': responseMessage,
        'totalCount': totalCount,
        'errors': errors,
      };
}
