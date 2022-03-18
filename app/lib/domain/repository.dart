import 'package:dartz/dartz.dart';
import 'package:sumar/presentation/usecases/get_summary_usecase.dart';

import '../core/app_error.dart';

abstract class SummarizerRepository {
  Future<Either<AppError, String>> summarizeText(GetSummaryParams params);
}
