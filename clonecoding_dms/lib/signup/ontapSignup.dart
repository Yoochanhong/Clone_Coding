import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'signUp.dart';
import 'button.dart';
import 'signUpClass.dart';

class OnTapSignUp extends StatelessWidget {
  final SignUpClass signUpClass;

  const OnTapSignUp({Key? key, required this.signUpClass}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal[400],
        title: Text(signUpClass.realTitle),
        leading: IconButton(
          icon: Icon(Icons.keyboard_backspace),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                signUpClass.title,
                style: TextStyle(
                    color: Colors.teal[400],
                    fontSize: 70.0.sp,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20.0, 5.0, 10.0, 30.0),
              child: Text(
                signUpClass.subText,
                style: TextStyle(
                  fontSize: 40.0.sp,
                ),
              ),
            ),
            SizedBox(
              width: 1080.0.w,
              height: 1050.0.h,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(padding: EdgeInsets.only(left: 120.0.w)),
                  onTapSignButton(
                      signUpClass.firstTitle, signUpClass.firstSubText),
                  onTapSignButton(
                      signUpClass.secondTitle, signUpClass.secondSubText),
                  onTapSignButton(
                      signUpClass.thirdTitle, signUpClass.thirdSubText),
                  onTapSignButton(
                      signUpClass.fourthTitle, signUpClass.fourthSubTitle),
                  Padding(padding: EdgeInsets.only(right: 120.0.w)),
                ],
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: SizedBox(
                  width: 950.w,
                  height: 120.h,
                  child: MaterialButton(
                    child: Text(
                      signUpClass.checkButton,
                      style: TextStyle(color: Colors.white, fontSize: 40.0.sp),
                    ),
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                        //모서리 둥글게 깎기
                        borderRadius: BorderRadius.circular(10.0)),
                    color: Colors.teal[400],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
