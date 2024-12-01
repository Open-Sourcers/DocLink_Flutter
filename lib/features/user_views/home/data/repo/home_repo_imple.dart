import 'package:dartz/dartz.dart';
import 'package:doc_link_project/core/api/dio_consumer.dart';
import 'package:doc_link_project/core/api/end_points.dart';
import 'package:doc_link_project/features/user_views/home/data/models/doctor_model/doctor_data.dart';
import 'package:doc_link_project/features/user_views/home/data/models/doctor_model/doctor_model.dart';
import 'package:doc_link_project/features/user_views/home/data/models/speciality_model/speciality_data.dart';
import 'package:doc_link_project/features/user_views/home/data/models/speciality_model/speciality_model.dart';
import 'package:doc_link_project/features/user_views/home/data/repo/home_repo.dart';

class HomeRepoImple extends HomeRepo {
  final DioConsumer dio;

  HomeRepoImple({required this.dio});
  @override
  Future<Either<String?, List<DoctorData>?>> getAllDoctors() async {
    final response = await dio.get(EndPoints.getAllDoctors);
    DoctorModel model = DoctorModel.fromJson(response);
    if (model.statusCode == 200) {
      return right(model.data);
    } else {
      return left(model.responseMessage);
    }
  }

  @override
  Future<Either<String?, List<SpecialityData>?>> getSpecialities() async {
    final response = await dio.get(EndPoints.getSpecialities);
    SpecialityModel model = SpecialityModel.fromJson(response);
    if (model.statusCode == 200) {
      return right(model.data);
    } else {
      return left(model.responseMessage);
    }
  }
}
