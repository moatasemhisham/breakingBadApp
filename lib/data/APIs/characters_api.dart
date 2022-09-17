import 'package:bb_app/constants/strings.dart';
import 'package:flutter/foundation.dart';
import 'package:dio/dio.dart';

class CharactersApi {
  late Dio dio;

  CharactersApi() {
    BaseOptions options = BaseOptions(
      baseUrl: baseUrl,
      receiveDataWhenStatusError: true,
      connectTimeout: 20 * 1000, // 1000 = 1 sec
      receiveTimeout: 20 * 1000,
    );
    dio = Dio(options);
  }

  Future<List<dynamic>> getAllCharacters() async {
    try {
      Response response = await dio.get('characters');
      print(response?.data.toString());
      print(response.statusCode);
      return response?.data;
    } catch (e) {
      if (kDebugMode) {
        Response response = await dio.get('characters');
        print(response.statusCode);

        print(
          e.toString(),
        );
      }
      return [];
    }
  }
}
