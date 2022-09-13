import 'package:flutter/material.dart';
import 'signUp.dart';

Widget OnTapSignUp(String realTitle,
    String title,
    String subText,
    String firstTitle,
    String firstSubText,
    String secondTitle,
    String secondSubText,
    String thirdTitle,
    String thirdSubText,
    String? fourthTitle,
    String? fourthSubTitle,){
  return Scaffold(
    appBar: AppBar(
      title: Text('$realTitle'),
    ),
  );

}