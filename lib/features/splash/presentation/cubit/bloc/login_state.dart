part of 'login_bloc.dart';

abstract class LoginState {}

class LoginInitial extends LoginState {}

class LoginLoading extends LoginState {}

class OtpSent extends LoginState {
  final String verificationId;
  OtpSent({required this.verificationId});
}

class LoginSuccess extends LoginState {}

class LoginError extends LoginState {
  final String message;
  LoginError({required this.message});
}
