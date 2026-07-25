import 'package:bloc/bloc.dart';
import 'package:healthpassport/features/onboarding/domain/entity/patient_entity.dart';
import 'package:healthpassport/features/onboarding/domain/usecases/onboarding_usecase.dart';
import 'package:meta/meta.dart';

part 'onboarding_event.dart';
part 'onboarding_state.dart';

class OnboardingBloc extends Bloc<OnboardingEvent, OnboardingState> {
  final SavePatientUseCase savePatientUseCase;
  final GetPatientUseCase getPatientUseCase;
  OnboardingBloc({
    required this.savePatientUseCase,
    required this.getPatientUseCase,
  }) : super(OnboardingInitial()) {
    on<SavePatientEvent>(_onSavePatient);
    on<GetPatientEvent>(_onGetPatient);
  }
  Future<void> _onSavePatient(
    SavePatientEvent event,
    Emitter<OnboardingState> emit,
  ) async {
    emit(SavePatientLoading());
    final result = await savePatientUseCase.call(event.patient);
    result.fold(
      (l) => emit(SavePatientFailure(l.errMessage)),
      (r) => emit(SavePatientSuccess()),
    );
  }

  Future<void> _onGetPatient(
    GetPatientEvent event,
    Emitter<OnboardingState> emit,
  ) async {
    emit(GetPatientLoading());
    final result = await getPatientUseCase.call(event.uid);
    result.fold(
      (l) => emit(GetPatientFailure(l.errMessage)),
      (r) => emit(GetPatientSuccess(r)),
    );
  }
}
