import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../button.dart';
import 'signUpClass.dart';

class OnTapSignUp extends StatefulWidget {
  final SignUpClass signUpClass;

  OnTapSignUp({Key? key, required this.signUpClass}) : super(key: key);

  @override
  State<OnTapSignUp> createState() => _OnTapSignUpState();
}

class _OnTapSignUpState extends State<OnTapSignUp> {
  final PageController pageController = PageController(
      initialPage: 0, //시작페이지
      viewportFraction: 0.8 //페이지뷰 양옆에 다른 페이지뷰가 살짝 보이게 하는 역할
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal[400],
        title: Text(widget.signUpClass.realTitle),
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
                widget.signUpClass.title,
                style: TextStyle(
                    color: Colors.teal[400],
                    fontSize: 70.0.sp,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20.0, 0.0, 10.0, 30.0),
              child: Text(
                widget.signUpClass.subText,
                style: TextStyle(
                  fontSize: 40.0.sp,
                ),
              ),
            ),
            Center(
              child: SizedBox(
                width: 1080.0.w,
                height: 1060.0.h,
                child: PageView(
                  pageSnapping: true,
                  controller: pageController,
                  children: [
                    onTapSignButton(widget.signUpClass.firstTitle,
                        widget.signUpClass.firstSubText),
                    onTapSignButton(widget.signUpClass.secondTitle,
                        widget.signUpClass.secondSubText),
                    onTapSignButton(widget.signUpClass.thirdTitle,
                        widget.signUpClass.thirdSubText),
                    if (widget.signUpClass.buttonPageIndex == 4)
                      onTapSignButton(widget.signUpClass.fourthTitle,
                          widget.signUpClass.fourthSubTitle),
                  ],
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.fromLTRB(10.0.w, 5.0.h, 10.0.w, 10.0.h),
                child: SizedBox(
                  width: 950.w,
                  height: 100.h,
                  child: MaterialButton(
                    child: Text(
                      widget.signUpClass.checkButton,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40.0.sp,
                      ),
                    ),
                    onPressed: () {},
                    disabledColor: Colors.grey,
                    color: Colors.teal[400],
                    shape: RoundedRectangleBorder(
                      //모서리 둥글게 깎기
                      borderRadius: BorderRadius.circular(10.0),
                    ),
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
