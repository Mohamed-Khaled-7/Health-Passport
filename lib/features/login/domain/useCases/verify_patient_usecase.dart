import 'package:dartz/dartz.dart';
import 'package:healthpassport/core/baseusecase/base_usecase.dart';
import 'package:healthpassport/core/errors/failure.dart';
import 'package:healthpassport/features/login/domain/entity/user_intity.dart';
import 'package:healthpassport/features/login/domain/repo/login_repo.dart';
import 'package:healthpassport/features/login/domain/useCases/params/verify_patient_params.dart';

class VerifyOtpUseCase implements BaseUseCase<UserEntity, VerifyPatientParams> {
  final LoginRepo loginRepo;
  VerifyOtpUseCase({required this.loginRepo});

  @override
  Future<Either<Failure, UserEntity>> call(VerifyPatientParams input) {
    return loginRepo.verifyOtp(
      verificationId: input.verificationId,
      otp: input.otp,
    );
  }
}
