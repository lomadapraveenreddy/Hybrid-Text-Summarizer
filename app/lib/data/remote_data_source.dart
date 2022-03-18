import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:sumar/core/consts/algo.dart';

import '../core/app_error.dart';
import '../presentation/usecases/get_summary_usecase.dart';

abstract class SummarizerRemoteDataSource {
  Future<Either<AppError, String>> summarizeText(GetSummaryParams params);
}

class SummarizerRemoteDataSourceImpl extends SummarizerRemoteDataSource {
  @override
  Future<Either<AppError, String>> summarizeText(GetSummaryParams params) async {
    try {
      String algo;
      algo = params.algo == SummarizerAlgo.pageRank ?'pgr':'rbm';
      
      final response =
          await Dio().post('https://127.0.0.1:8000/api/summary/?algo=$algo&size=${params.size}');

      if (response.statusCode! >= 200 && response.statusCode! <= 299) {
        return Right(response.data['summary']);
      } else {
        return Left(AppError(errorMessage:  'Something went wrong'));
      }
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return Left(AppError(errorMessage:  e.toString()));
    }
  }
}
