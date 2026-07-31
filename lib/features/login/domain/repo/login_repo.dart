import 'package:dartz/dartz.dart';
import 'package:healthpassport/core/errors/failure.dart';
import 'package:healthpassport/features/login/domain/entity/user_intity.dart';

abstract class LoginRepo {
  Future<Either<Failure, String>> sendOtp({required String phoneNumber});
  Future<Either<Failure, UserEntity>> verifyOtp({
    required String verificationId,
    required String otp,
  });
}
