import 'package:bb_app/constants/strings.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class CharactersApi {
  CharactersAPI() {}

  Future<List<dynamic>> getAllCharacters() async {
    try {
      var allCharactersUrl = Uri.parse('$baseUrl/characters');
      http.Response response = await http.get(allCharactersUrl);
      // http.StreamedResponse response = await request.send();

      if (response.statusCode == 200) {
        return response.bodyBytes;
      } else {
        if (kDebugMode) {
          print(response.statusCode);
        }
        return [];
      }
    } catch (e) {
      print(e.toString());
      return [];
    }

    // var request = http.Request(
    //     'GET', Uri.parse('https://www.breakingbadapi.com/api/characters'));
    //
    // http.StreamedResponse response = await request.send();
    //
    // if (response.statusCode == 200) {
    //   print(await response.stream.bytesToString());
    // } else {
    //   print(response.reasonPhrase);
    // }
    // return [];
  }
}

// try {
// var allCharactersUrl = Uri.parse('$baseUrl/characters');
// http.Response response = await http.get(allCharactersUrl);
// http.StreamedResponse response = await request.send();
//
// if (response.statusCode == 200) {
// return response.bodyBytes;
// } else {
// if (kDebugMode) {
// print(response.statusCode);
// return [];
// }
// }
// } catch (e) {
// print(e.toString());
// return [];
// }
// return [];
