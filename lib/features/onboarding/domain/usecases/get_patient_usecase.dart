import 'package:dartz/dartz.dart';
import 'package:healthpassport/core/baseusecase/base_usecase.dart';
import 'package:healthpassport/core/errors/failure.dart';
import 'package:healthpassport/features/onboarding/domain/entity/patient_entity.dart';
import 'package:healthpassport/features/onboarding/domain/repo/onBoarding_repo.dart';

class GetPatientUseCase implements BaseUseCase<PatientEntity?, String> {
  final OnBoardingRepo repo;
  GetPatientUseCase(this.repo);
  @override
  Future<Either<Failure, PatientEntity?>> call(String uid) {
    return repo.getPatientData(uid: uid);
  }
}