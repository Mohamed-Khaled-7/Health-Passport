import 'package:dartz/dartz.dart';
import 'package:healthpassport/core/errors/failure.dart';
import 'package:healthpassport/features/onboarding/domain/entity/patient_entity.dart';

abstract class OnBoardingRepo {
  Future<Either<Failure, void>> savePatientData({
    required PatientEntity patient,
  });

  Future<Either<Failure, PatientEntity?>> getPatientData({required String uid});
}
