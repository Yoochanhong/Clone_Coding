import 'package:clonecoding_dms/meals/meals.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

Future<Meals> getMeals() async {
  final response = await http
      .get(Uri.parse('https://api.dsm-dms.com/meal/${getSystemTime()}'));
  if (response.statusCode == 200) {
    print(json.decode(utf8.decode(response.bodyBytes)));
    return Meals.fromJson(json.decode(utf8.decode(response.bodyBytes)));
  } else {
    throw Exception('예외처리');
  }
}