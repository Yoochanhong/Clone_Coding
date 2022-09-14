import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'signUp.dart';
import 'button.dart';
import 'signUpClass.dart';

class OnTapSignUp extends StatelessWidget {
  final SignUpClass signUpClass;

  OnTapSignUp({Key? key, required this.signUpClass}) : super(key: key);

  final PageController pageController = PageController(
    initialPage: 0,
  );

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
              padding: EdgeInsets.only(left: 20.0, top: 20.0, bottom: 10.0),
              child: Text(
                signUpClass.title,
                style: TextStyle(
                    color: Colors.teal[400],
                    fontSize: 70.0.sp,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20.0, 0.0, 10.0, 30.0),
              child: Text(
                signUpClass.subText,
                style: TextStyle(
                  fontSize: 40.0.sp,
                ),
              ),
            ),
            Center(
              child: SizedBox(
                width: 1000.0.w,
                height: 1060.0.h,
                child: PageView(
                  pageSnapping: true,
                  controller: pageController,
                  children: [
                    onTapSignButton(
                        signUpClass.firstTitle, signUpClass.firstSubText),
                    onTapSignButton(
                        signUpClass.secondTitle, signUpClass.secondSubText),
                    onTapSignButton(
                        signUpClass.thirdTitle, signUpClass.thirdSubText),
                    if (signUpClass.buttonPageIndex == 4)
                      onTapSignButton(
                          signUpClass.fourthTitle, signUpClass.fourthSubTitle),
                  ],
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.fromLTRB(10.0.w,5.0.h, 10.0.w, 10.0.h),
                child: SizedBox(
                  width: 950.w,
                  height: 100.h,
                  child: MaterialButton(
                    child: Text(
                      signUpClass.checkButton,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40.0.sp,
                      ),
                    ),
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                      //모서리 둥글게 깎기
                      borderRadius: BorderRadius.circular(10.0),
                    ),
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
