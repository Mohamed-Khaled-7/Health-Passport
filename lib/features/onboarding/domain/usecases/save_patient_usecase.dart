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
