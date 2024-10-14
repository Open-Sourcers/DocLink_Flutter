import 'package:doc_link_project/features/auth/data/models/forget_password_model.dart';
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

  sendOtpToEmail(BuildContext context) async {
    emit(SendOtpToEmailLoading());
    var response = await forgetPasswordRepoImpl.sendOtpToEmail(context,
        email: forgetedPasswordEmail.text);
    response.fold(
      (message) => emit(SendOtpToEmailFailure(errorMessage: message)),
      (forgetPasswordModel) => emit(SendOtpToEmailSuccess(forgetPasswordModel:forgetPasswordModel)),
    );
  }
}

enum ForgetPasswordEnum { setEmail, verifyAccount, resetPassword }
