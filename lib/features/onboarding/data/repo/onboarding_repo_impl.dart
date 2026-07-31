// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';

import 'package:healthpassport/core/errors/failure.dart';
import 'package:healthpassport/features/onboarding/data/datasource/remote/onBoarding_remote_datasource.dart';
import 'package:healthpassport/features/onboarding/data/model/patient_model.dart';
import 'package:healthpassport/features/onboarding/domain/entity/patient_entity.dart';
import 'package:healthpassport/features/onboarding/domain/repo/onBoarding_repo.dart';

class OnboardingRepoImpl implements OnBoardingRepo {
  final OnBoardingRemoteDataSource remoteDataSource;
  OnboardingRepoImpl({required this.remoteDataSource});
  @override
  Future<Either<Failure, PatientModel?>> getPatientData({
    required String uid,
  }) async {
    try {
      final patient = await remoteDataSource.getOnBoardingData(uid: uid);
      return Right(patient);
    } catch (e) {
      return Left(FirestoreFailure(errMessage: e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> savePatientData({
    required PatientEntity patient,
  }) async {
    try {
      await remoteDataSource.savePatientData(
        patient: PatientModel(
          name: patient.name,
          age: patient.age,
          bloodType: patient.bloodType,
          chronicDisease: patient.chronicDisease,
        ),
      );
      return const Right(null);
    } catch (e) {
      return Left(FirestoreFailure(errMessage: e.toString()));
    }
  }
}
