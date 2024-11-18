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
        email: json['email'] as String?,
        userName: json['userName'] as String?,
        firstName: json['firstName'] as String?,
        lastName: json['lastName'] as String?,
        image: json['image'] as String?,
        rate: json['rate'] as int?,
        yearsOfExperience: json['yearsOfExperience'] as int?,
        about: json['about'] as String?,
        consultationFee: json['consultationFee'] as int?,
        specialty: json['specialty'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'email': email,
        'userName': userName,
        'firstName': firstName,
        'lastName': lastName,
        'image': image,
        'rate': rate,
        'yearsOfExperience': yearsOfExperience,
        'about': about,
        'consultationFee': consultationFee,
        'specialty': specialty,
      };
}
