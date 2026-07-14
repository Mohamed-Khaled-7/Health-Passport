import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';
import 'package:healthpassport/features/login/data/datasource/remote/login_remote_datasource.dart';
import 'package:healthpassport/features/login/data/repositories/repo_impl.dart';
import 'package:healthpassport/features/login/domain/repo/login_repo.dart';
import 'package:healthpassport/features/login/domain/useCases/login_useCases.dart';
import 'package:healthpassport/features/login/presentation/cubit/bloc/login_bloc.dart';

final gitIt = GetIt.instance;
void setup() {
  gitIt.registerLazySingleton<FirebaseAuth>(() => FirebaseAuth.instance);
  gitIt.registerLazySingleton<LoginRemoteDataSource>(
    () => LoginRemoteDataSourceImpl(firebaseAuth: gitIt()),
  );
  gitIt.registerLazySingleton<LoginRepo>(
    () => LoginRepoImpl(remoteDataSource: gitIt()),
  );
  gitIt.registerLazySingleton<LoginUseCases>(
    () => LoginUseCasesImpl(loginRepo: gitIt()),
  );
  gitIt.registerFactory<LoginBloc>(() => LoginBloc(loginUseCase: gitIt()));
}
