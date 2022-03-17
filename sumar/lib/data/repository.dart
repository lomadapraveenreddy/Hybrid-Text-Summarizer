import 'package:sumar/data/remote_data_source.dart';

import '../domain/repository.dart';

class SummarizerRepositoryImpl extends SummarizerRepository {
  final SummarizerRemoteDataSource dataSource;

  SummarizerRepositoryImpl({required this.dataSource});
  @override
  Future<String> summarizer(String text) async {
    return await dataSource.summarizeText(text);
  }
}
