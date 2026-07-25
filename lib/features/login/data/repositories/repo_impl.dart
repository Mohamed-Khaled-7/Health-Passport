// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:healthpassport/core/errors/failure.dart';
import 'package:healthpassport/features/login/data/datasource/remote/login_remote_datasource.dart';
import 'package:healthpassport/features/login/domain/repo/login_repo.dart';

class LoginRepoImpl implements LoginRepo {
  final LoginRemoteDataSource remoteDataSource;
  LoginRepoImpl({required this.remoteDataSource});
  @override
  Future<Either<Failure, String>> sendOtp({required String phoneNumber}) async {
    final otpCode = await remoteDataSource.sendOtp(phoneNumber: phoneNumber);
    return otpCode;
  }

  @override
  Future<Either<Failure, User>> verifyOtp({
    required String verificationId,
    required String otp,
  }) async {
    {
      return await remoteDataSource.verifyOtp(
        verificationId: verificationId,
        otp: otp,
      );
    }
  }
}
