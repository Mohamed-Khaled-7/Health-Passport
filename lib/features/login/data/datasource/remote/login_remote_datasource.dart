// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:healthpassport/core/errors/failure.dart';

abstract class LoginRemoteDataSource {
  Future<Either<Failure, String>> sendOtp({required String phoneNumber});
  Future<Either<Failure, User>> verifyOtp({
    required String verificationId,
    required String otp,
  });
}

class LoginRemoteDataSourceImpl implements LoginRemoteDataSource {
  final FirebaseAuth firebaseAuth;
  LoginRemoteDataSourceImpl({required this.firebaseAuth});
  @override
  Future<Either<Failure, String>> sendOtp({required String phoneNumber}) async {
    final completer = Completer<Either<Failure, String>>();
    try {
      await firebaseAuth.verifyPhoneNumber(
        phoneNumber: phoneNumber,
        verificationCompleted: (PhoneAuthCredential credential) {},
        verificationFailed: (FirebaseAuthException error) {
          if (!completer.isCompleted) {
            completer.complete(
              Left(FirebaseAuthFailure(errMessage: error.message ?? '')),
            );
          }
        },
        codeSent: (String verificationId, int? resendToken) {
          debugPrint("CODE SENT: $verificationId");
          if (!completer.isCompleted) {
            completer.complete(Right(verificationId));
          }
        },
        codeAutoRetrievalTimeout: (String verificationId) {},
      );
      return await completer.future;
    } on FirebaseAuthException catch (e) {
      return Left(FirebaseAuthFailure.fromFirebaseAuthException(e));
    }
  }

  @override
  Future<Either<Failure, User>> verifyOtp({
    required String verificationId,
    required String otp,
  }) async {
    try {
      debugPrint("VERIFY ID: $verificationId");
      debugPrint("OTP: $otp");
      final credential = PhoneAuthProvider.credential(
        verificationId: verificationId,
        smsCode: otp,
      );

      final userCredential = await firebaseAuth.signInWithCredential(
        credential,
      );
      return Right(userCredential.user!);
    } on FirebaseAuthException catch (e) {
      debugPrint("CODE: ${e.code}");
      debugPrint("MESSAGE: ${e.message}");
      return Left(FirebaseAuthFailure.fromFirebaseAuthException(e));
    }
  }
}
