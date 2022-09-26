import 'dart:convert';
import 'package:clonecoding_dms/meals.dart';
import 'package:http/http.dart' as http;

Future<Meals> getMeals() async {
  int year = DateTime.now().year;
  int month = DateTime.now().month;
  int day = DateTime.now().day;
  final response =
  await http.get(Uri.parse('https://api.dsm-dms.com/meal/$year-$month-$day'));
  if (response.statusCode == 200) {
    print(json.decode(utf8.decode(response.bodyBytes)));
    return Meals.fromjson(json.decode(utf8.decode(response.bodyBytes)));
  } else {
    throw Exception('실패');
  }
}