// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';
import 'package:healthpassport/core/errors/failure.dart';
import 'package:healthpassport/features/login/domain/repo/login_repo.dart';

abstract class LoginUseCases {
  Future<Either<Failure, String>> sendOtp({required String phoneNumber});
  Future<Either<Failure, void>> verifyOtp({
    required String verificationId,
    required String otp,
  });
}

class LoginUseCasesImpl implements LoginUseCases {
  final LoginRepo loginRepo;
  LoginUseCasesImpl({required this.loginRepo});
  @override
  Future<Either<Failure, String>> sendOtp({required String phoneNumber}) async {
    return await loginRepo.sendOtp(phoneNumber: phoneNumber);
  }

  @override
  Future<Either<Failure, void>> verifyOtp({
    required String verificationId,
    required String otp,
  }) async {
    return await loginRepo.verifyOtp(verificationId: verificationId, otp: otp);
  }
}
