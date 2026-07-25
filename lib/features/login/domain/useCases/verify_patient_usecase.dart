import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:healthpassport/core/baseusecase/base_usecase.dart';
import 'package:healthpassport/core/errors/failure.dart';
import 'package:healthpassport/features/login/domain/repo/login_repo.dart';
import 'package:healthpassport/features/login/domain/useCases/params/verify_patient_params.dart';

class VerifyOtpUseCase implements BaseUseCase<User, VerifyPatientParams> {
  final LoginRepo loginRepo;
  VerifyOtpUseCase({required this.loginRepo});

  @override
  Future<Either<Failure, User>> call(VerifyPatientParams input) {
    return loginRepo.verifyOtp(
      verificationId: input.verificationId,
      otp: input.otp,
    );
  }
}
