import 'dart:convert';
import 'package:clonecoding_dms/meals.dart';
import 'package:http/http.dart' as http;

Future<Meals> getMeals() async {
  final response =
  await http.get(Uri.parse('https://api.dsm-dms.com/meal/2022-09-26'));
  if (response.statusCode == 200) {
    print(json.decode(response.body));
    return Meals.fromjson(json.decode(response.body));
  } else {
    throw Exception('실패');
  }
}