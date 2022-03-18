import 'package:dartz/dartz.dart';

import 'package:sumar/core/consts/algo.dart';
import 'package:sumar/core/usecase.dart';
import 'package:sumar/domain/repository.dart';

import '../../core/app_error.dart';

class GetSummaryUsecase extends Usecase<String, GetSummaryParams, AppError> {
  SummarizerRepository repository;
  GetSummaryUsecase({
    required this.repository,
  });
  @override
  Future<Either<AppError, String>> call(GetSummaryParams params) {
    return repository.summarizeText(params);
  }
}

class GetSummaryParams {
  String text;
  double size;
  SummarizerAlgo algo;
  GetSummaryParams({
    required this.text,
    required this.algo,
    required this.size,
  });
}
