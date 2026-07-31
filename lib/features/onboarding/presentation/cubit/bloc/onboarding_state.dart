part of 'onboarding_bloc.dart';

@immutable
sealed class OnboardingState {}

final class OnboardingInitial extends OnboardingState {}
//save

final class SavePatientLoading extends OnboardingState {}

final class SavePatientSuccess extends OnboardingState {}

final class SavePatientFailure extends OnboardingState {
  final String message;

  SavePatientFailure(this.message);
}

//get
final class GetPatientLoading extends OnboardingState {}

final class GetPatientSuccess extends OnboardingState {
  final PatientEntity? patient;

  GetPatientSuccess(this.patient);
}

final class GetPatientFailure extends OnboardingState {
  final String message;

  GetPatientFailure(this.message);
}
