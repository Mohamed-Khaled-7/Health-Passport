import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';
import 'package:healthpassport/features/login/data/datasource/remote/login_remote_datasource.dart';
import 'package:healthpassport/features/login/data/repositories/repo_impl.dart';
import 'package:healthpassport/features/login/domain/repo/login_repo.dart';
import 'package:healthpassport/features/login/domain/useCases/send_patient_usecase.dart';
import 'package:healthpassport/features/login/domain/useCases/verify_patient_usecase.dart';
import 'package:healthpassport/features/login/presentation/cubit/bloc/login_bloc.dart';
import 'package:healthpassport/features/onboarding/data/datasource/remote/onBoarding_remote_datasource.dart';
import 'package:healthpassport/features/onboarding/data/repo/onboarding_repo_impl.dart';
import 'package:healthpassport/features/onboarding/domain/repo/onBoarding_repo.dart';
import 'package:healthpassport/features/onboarding/domain/usecases/get_patient_usecase.dart';
import 'package:healthpassport/features/onboarding/domain/usecases/save_patient_usecase.dart';
import 'package:healthpassport/features/onboarding/presentation/cubit/bloc/onboarding_bloc.dart';

final gitIt = GetIt.instance;
void setup() {
  gitIt.registerLazySingleton<FirebaseAuth>(() => FirebaseAuth.instance);
  gitIt.registerLazySingleton<FirebaseFirestore>(
    () => FirebaseFirestore.instance,
  );
  gitIt.registerLazySingleton<LoginRemoteDataSource>(
    () => LoginRemoteDataSourceImpl(firebaseAuth: gitIt()),
  );
  gitIt.registerLazySingleton<LoginRepo>(
    () => LoginRepoImpl(remoteDataSource: gitIt()),
  );
  gitIt.registerLazySingleton<OnBoardingRemoteDataSource>(
    () => OnBoardingRemoteDataSourceImpl(
      firebaseAuth: gitIt(),
      firestore: gitIt(),
    ),
  );
  gitIt.registerLazySingleton<OnBoardingRepo>(
    () => OnboardingRepoImpl(remoteDataSource: gitIt()),
  );
  gitIt.registerLazySingleton<SendOtpUseCase>(
    () => SendOtpUseCase(loginRepo: gitIt()),
  );
  gitIt.registerLazySingleton<VerifyOtpUseCase>(
    () => VerifyOtpUseCase(loginRepo: gitIt()),
  );
  gitIt.registerLazySingleton<SavePatientUseCase>(
    () => SavePatientUseCase(gitIt()),
  );
  gitIt.registerLazySingleton<GetPatientUseCase>(
    () => GetPatientUseCase(gitIt()),
  );
  gitIt.registerFactory<LoginBloc>(
    () => LoginBloc(sendOtpUseCase: gitIt(), verifyOtpUseCase: gitIt()),
  );
  gitIt.registerFactory<OnboardingBloc>(
    () =>
        OnboardingBloc(getPatientUseCase: gitIt(), savePatientUseCase: gitIt()),
  );
}
