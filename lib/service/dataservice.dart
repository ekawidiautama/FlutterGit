import 'dart:convert';
import 'package:gym_app/endpoint/endpoint.dart';
import 'package:http/http.dart' as http;
import 'package:gym_app/dto/News.dart';

class Dataservice{
  static Future<List<News>> fetchNews() async{
    final response = await http.get(Uri.parse(Endpoint.news));
    if (response.statusCode == 200){
      final List<dynamic> jsonResponse = jsonDecode(response.body);
      return jsonResponse.map((item) => News.fromJson(item)).toList();
    }else{
      throw Exception('Failed to load news');
      }
    }
    static Future<void> postEvent(String title, String body) async {
    Map<String, String> input = {
      "title": title,
      "body": body,
    };
    String dataJson = jsonEncode(input);
    await http.post(
      Uri.parse(Endpoint.news),
      body: dataJson,
      headers: {
        'Content-Type': 'application/json',
      },
    );
  }
  }