part of 'onboarding_bloc.dart';

@immutable
sealed class OnboardingEvent {}

class SavePatientEvent extends OnboardingEvent {
  final PatientEntity patient;
  SavePatientEvent({required this.patient});
}

class GetPatientEvent extends OnboardingEvent {
  final String uid;
  GetPatientEvent({required this.uid});
}
