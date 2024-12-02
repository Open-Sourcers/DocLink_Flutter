import 'package:doc_link_project/features/user_views/doctor_details/presentation/managers/doctor_cubit/doctor_states.dart';
import 'package:doc_link_project/features/user_views/home/data/repo/home_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DoctorCubit extends Cubit<DoctorStates> {
  final HomeRepo homeRepo;
  DoctorCubit({required this.homeRepo}) : super(GetAllDoctorsInitial());

  getAllDocs(BuildContext context) async {
    emit(GetAllDoctorsLoading());
    final response = await homeRepo.getAllDoctors(context);
    response.fold(
      (errMessage) => emit(GetAllDoctorsFailure(errMessage: errMessage)),
      (doctors) => emit(GetAllDoctorsSuccess(doctors: doctors)),
    );
  }
}
