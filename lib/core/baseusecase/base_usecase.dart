import 'package:dartz/dartz.dart';
import 'package:healthpassport/core/errors/failure.dart';

abstract class BaseUseCase<Output, Input> {
  Future<Either<Failure, Output>> call(Input input);
}
