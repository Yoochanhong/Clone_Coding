import 'package:flutter/material.dart';
import '../signUpClass.dart';
import 'signUp.dart';

class OnTapSignUp extends StatefulWidget {
  OnTapSignUp(
      {Key? key,
      required this.realTitle,
      required this.title,
      required this.subText,
      required this.firstTitle,
      required this.firstSubText,
      required this.secondTitle,
      required this.secondSubText,
      required this.thirdTitle,
      required this.thirdSubText,
      this.fourthTitle,
      this.fourthSubText})
      : super(key: key);

  String realTitle;
  String title;
  String subText;
  String firstTitle;
  String firstSubText;
  String secondTitle;
  String secondSubText;
  String thirdTitle;
  String thirdSubText;
  String? fourthTitle;
  String? fourthSubText;

  @override
  State<OnTapSignUp> createState() => _OnTapSignUpState();
}

class _OnTapSignUpState extends State<OnTapSignUp> {

  void initState(){
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: Container(
        child: Center(
          child: Column(
            children: [
              Text('data'),
            ],
          ),
        ),
      ),
    );
  }
}
