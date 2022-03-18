import "package:dartz/dartz.dart";

abstract class Usecase<Type, Params, FailureType> {
  Future<Either<FailureType, Type>> call(Params params);
}

class NoParams {}
