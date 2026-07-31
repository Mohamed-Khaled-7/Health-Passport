part of 'login_bloc.dart';

abstract class LoginEvent {}

class SendOtpEvent extends LoginEvent {
  final String phoneNumber;
  SendOtpEvent({required this.phoneNumber});
}

class VerifyOtpEvent extends LoginEvent {
  final String verificationId;
  final String otp;
  VerifyOtpEvent({required this.verificationId, required this.otp});
}
