import 'package:flutter_bloc/flutter_bloc.dart';

part 'forget_password_state.dart';

class ForgetPasswordCubit extends Cubit<ForgetPasswordState> {
  ForgetPasswordCubit() : super(ForgetPasswordInitial());
  ForgetPasswordEnum currentView = ForgetPasswordEnum.setEmail;

  void toVerifyAccount() {
    currentView = ForgetPasswordEnum.verifyAccount;
    emit(ChangeForgetPasswordView());
  }
  void toResetPassword(){
    currentView = ForgetPasswordEnum.resetPassword;
    emit(ChangeForgetPasswordView());
  }
}

enum ForgetPasswordEnum { setEmail, verifyAccount, resetPassword }
