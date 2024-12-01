class SpecialityData {
  num? id;
  String? name;
  String? imageUrl;
  num? numberOfDoctors;

  SpecialityData({
    this.id,
    this.name,
    this.imageUrl,
    this.numberOfDoctors,
  });

  factory SpecialityData.fromJson(jsonData) => SpecialityData(
        id: jsonData['id'] as num?,
        name: jsonData['name'] as String?,
        imageUrl: jsonData['imageUrl'] as String?,
        numberOfDoctors: jsonData['numberOfDoctors'] as num,
      );
}
