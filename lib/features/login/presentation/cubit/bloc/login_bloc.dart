import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:healthpassport/features/login/domain/useCases/login_useCases.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final LoginUseCases loginUseCase;
  LoginBloc({required this.loginUseCase}) : super(LoginInitial()) {
    on<SendOtpEvent>(_onSendOtp);
    on<VerifyOtpEvent>(_onVerifyOtp);
  }

  Future<void> _onSendOtp(SendOtpEvent event, Emitter<LoginState> emit) async {
    emit(LoginLoading());
    final result = await loginUseCase.sendOtp(phoneNumber: event.phoneNumber);
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
    final result = await loginUseCase.verifyOtp(
      verificationId: event.verificationId,
      otp: event.otp,
    );
    result.fold(
      (l) => emit(LoginFailure(message: l.errMessage)),
      (r) => emit((VerifyOtpSuccess())),
    );
  }
}
