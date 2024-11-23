import 'package:doc_link_project/core/api/api_keys.dart';

class DoctorData {
  String? email;
  String? userName;
  String? firstName;
  String? lastName;
  String? image;
  int? rate;
  int? yearsOfExperience;
  String? about;
  int? consultationFee;
  String? specialty;

  DoctorData({
    this.email,
    this.userName,
    this.firstName,
    this.lastName,
    this.image,
    this.rate,
    this.yearsOfExperience,
    this.about,
    this.consultationFee,
    this.specialty,
  });

  factory DoctorData.fromJson(Map<String, dynamic> json) => DoctorData(
        email: json[ApiKeys.email] as String?,
        userName: json[ApiKeys.userName] as String?,
        firstName: json[ApiKeys.firstName] as String?,
        lastName: json[ApiKeys.lastName] as String?,
        image: json[ApiKeys.image] as String?,
        rate: json[ApiKeys.rate] as int?,
        yearsOfExperience: json[ApiKeys.yearsOfExperience] as int?,
        about: json[ApiKeys.about] as String?,
        consultationFee: json[ApiKeys.consultationFee] as int?,
        specialty: json[ApiKeys.specialty] as String?,
      );

  Map<String, dynamic> toJson() => {
        ApiKeys.email: email,
        ApiKeys.userName: userName,
        ApiKeys.firstName: firstName,
        ApiKeys.lastName: lastName,
        ApiKeys.image: image,
        ApiKeys.rate: rate,
        ApiKeys.yearsOfExperience: yearsOfExperience,
        ApiKeys.about: about,
        ApiKeys.consultationFee: consultationFee,
        ApiKeys.specialty: specialty,
      };
}
