// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:healthpassport/features/login/domain/useCases/params/verify_patient_params.dart';
import 'package:healthpassport/features/login/domain/useCases/send_patient_usecase.dart';
import 'package:healthpassport/features/login/domain/useCases/verify_patient_usecase.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final SendOtpUseCase sendOtpUseCase;
  final VerifyOtpUseCase verifyOtpUseCase;
  LoginBloc({required this.sendOtpUseCase, required this.verifyOtpUseCase})
    : super(LoginInitial()) {
    on<SendOtpEvent>(_onSendOtp);
    on<VerifyOtpEvent>(_onVerifyOtp);
  }

  Future<void> _onSendOtp(SendOtpEvent event, Emitter<LoginState> emit) async {
    emit(LoginLoading());
    final result = await sendOtpUseCase.call(event.phoneNumber);
    result.fold(
      (l) => emit(LoginFailure(message: l.errMessage)),
      (r) => emit(OtpSentSuccess(verificationId: r)),
    );
  }

  Future<void> _onVerifyOtp(
    VerifyOtpEvent event,
    Emitter<LoginState> emit,
  ) async {
    emit(LoginLoading());
    final result = await verifyOtpUseCase.call(
      VerifyPatientParams(
      verificationId: event.verificationId,
      otp: event.otp,
    ),
    );
    result.fold(
      (l) => emit(LoginFailure(message: l.errMessage)),
      (r) => emit((VerifyOtpSuccess(user: r))),
    );
  }
}
