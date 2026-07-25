import 'package:dartz/dartz.dart';
import 'package:healthpassport/core/baseusecase/base_usecase.dart';
import 'package:healthpassport/core/errors/failure.dart';
import 'package:healthpassport/features/login/domain/repo/login_repo.dart';

class SendOtpUseCase implements BaseUseCase<void, String> {
  final LoginRepo loginRepo;
  SendOtpUseCase({required this.loginRepo});
  @override
  Future<Either<Failure, String>> call(String input) async {
    return await loginRepo.sendOtp(phoneNumber: input);
  }
}
