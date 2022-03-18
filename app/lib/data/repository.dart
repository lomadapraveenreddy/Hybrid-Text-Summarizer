import 'package:dartz/dartz.dart';
import 'package:sumar/data/remote_data_source.dart';

import '../core/app_error.dart';
import '../domain/repository.dart';
import '../presentation/usecases/get_summary_usecase.dart';

class SummarizerRepositoryImpl extends SummarizerRepository {
  final SummarizerRemoteDataSource dataSource;

  SummarizerRepositoryImpl({required this.dataSource});
  @override
  Future<Either<AppError, String>> summarizeText(GetSummaryParams params) async {
    return await dataSource.summarizeText(params);
  }
}
