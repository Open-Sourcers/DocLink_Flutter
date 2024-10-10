import 'package:doc_link_project/core/api/api_keys.dart';

class Data {
  String? displayName;
  String? email;
  String? token;

  Data({this.displayName, this.email, this.token});

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        displayName: json[ApiKeys.displayName] as String?,
        email: json[ApiKeys.email] as String?,
        token: json[ApiKeys.token] as String?,
      );

  Map<String, dynamic> toJson() => {
        ApiKeys.displayName: displayName,
        ApiKeys.email: email,
        ApiKeys.token: token,
      };
}
