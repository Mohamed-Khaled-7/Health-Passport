part of 'login_bloc.dart';

sealed class LoginState {}

final class LoginInitial extends LoginState {}

final class LoginLoading extends LoginState {}

final class OtpSentSuccess extends LoginState {
  final String verificationId;
  OtpSentSuccess({required this.verificationId});
}

final class VerifyOtpSuccess extends LoginState {
  final UserEntity user;

  VerifyOtpSuccess({required this.user});
}

final class LoginFailure extends LoginState {
  final String message;
  LoginFailure({required this.message});
}
