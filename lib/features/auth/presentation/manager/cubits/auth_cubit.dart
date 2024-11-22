import 'package:doc_link_project/features/auth/data/repo/auth_repo_impl.dart';
import 'package:doc_link_project/features/auth/presentation/manager/cubits/auth_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit({required this.authRepo}) : super(AuthInitial());
  final AuthRepoImpl authRepo;
  // register
  TextEditingController registerFirstName = TextEditingController();
  TextEditingController registerLastName = TextEditingController();
  TextEditingController registerEmail = TextEditingController();
  TextEditingController registerPassword = TextEditingController();
  TextEditingController registerConfirmPassword = TextEditingController();
  TextEditingController registerBirthDay = TextEditingController();
  String? registerGender;
  String registerEmergencyContact = '123';
  GlobalKey<FormState> registerFormKey = GlobalKey();
  // login
  TextEditingController loginEmail = TextEditingController();
  TextEditingController loginPassword = TextEditingController();
  GlobalKey<FormState> loginFormKey = GlobalKey();

  register(BuildContext context) async {
    emit(RegisterLoading());
    final response = await authRepo.register(
      context,
      firstName: registerFirstName.text,
      lastName: registerLastName.text,
      email: registerEmail.text,
      birthDay: registerBirthDay.text,
      gender: registerGender!,
      emergencyContact: registerEmergencyContact,
      password: registerPassword.text,
    );

    response.fold(
      (message) => emit(RegisterFailure(errorMessage: message)),
      (success) => emit(RegisterSuccess()),
    );
  }

  login(BuildContext context) async {
    emit(LoginLoading());
    final response = await authRepo.login(
      context,
      email: loginEmail.text,
      password: loginPassword.text,
    );
    response.fold(
      (message) => emit(LoginFailure(errorMessage: message)),
      (success) => emit(LoginSuccess()),
    );
  }

  logout() {
    authRepo.logout();
    emit(LogoutDone());
  }

//birth day
  setRegisterBirthDay(DateTime? date) {
    if (date == null) return;
    registerBirthDay.text = DateFormat("yyyy-MM-dd").format(date);
    emit(SetRegisterBirthDay());
  }

  // gender
  setRegisterGender(String? gender) {
    if (gender == null) return;
    registerGender = gender;
    emit(SetRegisterGender());
  }
}
