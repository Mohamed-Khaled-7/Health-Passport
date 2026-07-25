import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:healthpassport/core/errors/failure.dart';

abstract class LoginRepo {
  Future<Either<Failure, String>> sendOtp({required String phoneNumber});
  Future<Either<Failure, User>> verifyOtp({
    required String verificationId,
    required String otp,
  });
}
