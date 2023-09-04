import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:task8/model/model.dart';

class GetNewsRepo {
  Future<GetNewsModel?> getNews() async {
    try {
      var hh = Uri.parse(
        "https://newsapi.org/v2/everything?q=tesla&from=2023-08-03&sortBy=publishedAt&apiKey=39ac146b2ea249e181233949a5e91466",
      );

      var response = await http.get(hh);
      print(response);
      var decodedResponse = jsonDecode(response.body);
      print(decodedResponse);

      if (response.statusCode == 200) {
        GetNewsModel myResponse = GetNewsModel.fromJson(decodedResponse);

        return myResponse;
      } else {
        return null;
      }
    } catch (error) {
      return null;
    }
  }
}
