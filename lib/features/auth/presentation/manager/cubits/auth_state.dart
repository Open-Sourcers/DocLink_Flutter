abstract class AuthState {}

class AuthInitial extends AuthState {}

class RegisterLoading extends AuthState {}

class RegisterSuccess extends AuthState {}

class RegisterFailure extends AuthState {
  final String errorMessage;

  RegisterFailure({required this.errorMessage});
}

class LoginLoading extends AuthState {}

class LoginSuccess extends AuthState {}

class LoginFailure extends AuthState {
  final String errorMessage;

  LoginFailure({required this.errorMessage});
}

class SendOtpToEmailLoading extends AuthState {}

class SendOtpToEmailSuccess extends AuthState {}

class SendOtpToEmailFailure extends AuthState {
  final String errorMessage;
  SendOtpToEmailFailure({required this.errorMessage});
}
