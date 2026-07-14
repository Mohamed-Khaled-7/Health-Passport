import 'package:dartz/dartz.dart';
import 'package:healthpassport/core/errors/failure.dart';

abstract class LoginRepo {
  Future<Either<Failure, String>> sendOtp({
    required String phoneNumber,
  });
  Future<Either<Failure, void>> verifyOtp({
    required String verificationId,
    required String otp,
  });
}
