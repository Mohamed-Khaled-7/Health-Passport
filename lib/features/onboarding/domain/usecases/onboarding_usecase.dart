// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';
import 'package:healthpassport/core/baseusecase/base_usecase.dart';

import 'package:healthpassport/core/errors/failure.dart';
import 'package:healthpassport/features/onboarding/domain/entity/patient_entity.dart';
import 'package:healthpassport/features/onboarding/domain/repo/onBoarding_repo.dart';



class SavePatientUseCase implements BaseUseCase<void, PatientEntity> {
  final OnBoardingRepo repo;
  SavePatientUseCase(this.repo);
  @override
  Future<Either<Failure, void>> call(PatientEntity patient) {
    return repo.savePatientData(patient: patient);
  }
}

class GetPatientUseCase implements BaseUseCase<PatientEntity, String> {
  final OnBoardingRepo repo;
  GetPatientUseCase(this.repo);
  @override
  Future<Either<Failure, PatientEntity>> call(String uid) {
    return repo.getOnBoardingData(uid: uid);
  }
}
