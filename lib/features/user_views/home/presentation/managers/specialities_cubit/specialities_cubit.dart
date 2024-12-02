import 'package:doc_link_project/features/user_views/home/data/repo/home_repo.dart';
import 'package:doc_link_project/features/user_views/home/presentation/managers/specialities_cubit/specialities_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SpecialitiesCubit extends Cubit<SpecialitiesStates> {
  final HomeRepo homeRepo;
  SpecialitiesCubit({required this.homeRepo}) : super(GetAllSpecInitial());

  getAllSpecialities(BuildContext context) async {
    emit(GetAllSpecLoading());
    final response = await homeRepo.getSpecialities(context);
    response.fold(
      (errMessage) => emit(GetAllSpecFailure(errMessage: errMessage)),
      (specs) => emit(GetAllSpecSuccess(specialities: specs)),
    );
  }
}
