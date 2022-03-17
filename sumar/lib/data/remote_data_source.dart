import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

abstract class SummarizerRemoteDataSource {
  Future<String> summarizeText(String text);
}

class SummarizerRemoteDataSourceImpl extends SummarizerRemoteDataSource {
  @override
  Future<String> summarizeText(String text) async {
    try {
      final response = await Dio().get('http://www.google.com');

      if (response.statusCode! >= 200 && response.statusCode! <= 299) {
        return response.data;
      } else {
        return 'Something went wrong';
      }
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return e.toString();
    }
  }
}
