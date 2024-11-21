import 'package:doc_link_project/features/user_views/doctor_details/presentation/managers/doctors_cubit/doctors_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DoctorsCubit extends Cubit<DoctorsStates> {
  DoctorsCubit() : super(GetAllDoctorsInitial());
}
