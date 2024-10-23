import 'package:doc_link_project/features/auth/data/models/auth_model/auth_model.dart';
import 'package:doc_link_project/features/auth/data/repo/forget_password_repo_impl.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'forget_password_state.dart';

class ForgetPasswordCubit extends Cubit<ForgetPasswordState> {
  ForgetPasswordCubit({required this.forgetPasswordRepoImpl})
      : super(ForgetPasswordInitial());
  final ForgetPasswordRepoImpl forgetPasswordRepoImpl;
  //
  ForgetPasswordEnum currentView = ForgetPasswordEnum.setEmail;

  void toVerifyAccount() {
    currentView = ForgetPasswordEnum.verifyAccount;
    emit(ChangeForgetPasswordView());
  }

  void toResetPassword() {
    currentView = ForgetPasswordEnum.resetPassword;
    emit(ChangeForgetPasswordView());
  }

  //forgetPassword-send email
  TextEditingController forgetedPasswordEmail = TextEditingController();
  GlobalKey<FormState> forgetedPasswordFormKey = GlobalKey();
  String forgetPasswordToken = '';

  sendOtpToEmail(BuildContext context) async {
    emit(SendOtpToEmailLoading());
    var response = await forgetPasswordRepoImpl.sendOtpToEmail(context,
        email: forgetedPasswordEmail.text);
    response.fold(
      (message) => emit(SendOtpToEmailFailure(errorMessage: message)),
      (forgetPasswordModel) {
        forgetPasswordToken = forgetPasswordModel.data!.token!;
        emit(SendOtpToEmailSuccess(authModel: forgetPasswordModel));
      },
    );
  }

  // verify account
  String forgetPasswordOtp = '';
  setForgetPasswordOtp(String otp) {
    forgetPasswordOtp = otp;
  }

  verifyAccount(BuildContext context) async {
    emit(VerifyAccountLoading());
    var response = await forgetPasswordRepoImpl.verifyAccount(context,
        email: forgetedPasswordEmail.text, otp: forgetPasswordOtp);
    response.fold(
      (message) => emit(VerifyAccountFailure(errorMessage: message)),
      (forgetPasswordModel) {
        emit(VerifyAccountSuccess());
      },
    );
  }

  // reset password
  TextEditingController newPassword = TextEditingController();
  TextEditingController passwordComfirmation = TextEditingController();

  resetPassword(BuildContext context) async {
    emit(ResetPasswordLoading());
    var response = await forgetPasswordRepoImpl.resetPassword(context,
        email: forgetedPasswordEmail.text,
        token: forgetPasswordToken,
        password: newPassword.text,
        passwordComfirmation: passwordComfirmation.text);
    response.fold(
      (message) => emit(ResetPasswordFailure(errorMessage: message)),
      (forgetPasswordModel) {
        emit(ResetPasswordSuccess());
      },
    );
  }
}

enum ForgetPasswordEnum { setEmail, verifyAccount, resetPassword }
