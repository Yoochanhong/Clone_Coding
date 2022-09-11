import 'package:clonecoding_dms/announcement.dart';
import 'package:clonecoding_dms/mealsPage.dart';
import 'package:clonecoding_dms/myPage.dart';
import 'package:clonecoding_dms/signUp.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MealsPage(),
    );
  }
}