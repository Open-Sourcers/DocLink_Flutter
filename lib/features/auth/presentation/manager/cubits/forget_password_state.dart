part of 'forget_password_cubit.dart';

sealed class ForgetPasswordState {}

final class ForgetPasswordInitial extends ForgetPasswordState {}

final class ChangeForgetPasswordView extends ForgetPasswordState {}

class SendOtpToEmailLoading extends ForgetPasswordState {}

class SendOtpToEmailSuccess extends ForgetPasswordState {
  final ForgetPasswordModel forgetPasswordModel;

  SendOtpToEmailSuccess({required this.forgetPasswordModel});
}

class SendOtpToEmailFailure extends ForgetPasswordState {
  final String errorMessage;
  SendOtpToEmailFailure({required this.errorMessage});
}
