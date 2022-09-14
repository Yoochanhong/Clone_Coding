import 'package:clonecoding_dms/signup/signUpClass.dart';
import 'package:flutter/material.dart';
import 'ontapSignup.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'signUp.dart';

Widget signupButton(String ButtonTitle, String ButtonSubTitle) {
  return SizedBox(
    width: 1000.0.w,
    height: 360.0.h,
    child: TextButton(
      style: ButtonStyle(
        overlayColor: MaterialStateColor.resolveWith(
            (states) => Colors.transparent), //버튼 애니메이션 삭제
      ),
      onPressed: () {},
      child: Card(
        shape: RoundedRectangleBorder(
            //모서리 둥글게 깎기
            borderRadius: BorderRadius.circular(20.0)),
        elevation: 2.8, //그림자 깊이
        shadowColor: Colors.teal[200],
        child: Center(
          child: ListTile(
            title: Padding(
              padding: EdgeInsets.only(left: 10.0.w, top: 25.0.h),
              child: Text(
                '$ButtonTitle',
                style: TextStyle(
                    color: Colors.teal[400],
                    fontSize: 55.0.sp,
                    fontWeight: FontWeight.bold),
              ),
            ),
            subtitle: Padding(
              padding: EdgeInsets.fromLTRB(10.0.w, 3.0.h, 0.0.w, 40.0.h),
              child: Text(
                '$ButtonSubTitle',
                style: TextStyle(fontSize: 35.0.sp),
              ),
            ),
          ),
        ),
      ),
    ),
  );
}

Widget mealsButton(String title, String subTitle) {
  return Column(
    children: [
      TextButton(
        onPressed: () {},
        style: ButtonStyle(
          overlayColor: MaterialStateColor.resolveWith(
              (states) => Colors.transparent), //버튼 애니메이션 삭제
        ),
        child: SizedBox(
          width: 1000.0.w,
          height: 400.0.h,
          child: Card(
            shape: RoundedRectangleBorder(
                //모서리 둥글게 깎기
                borderRadius: BorderRadius.circular(20.0)),
            elevation: 2.8, //그림자 깊이
            shadowColor: Colors.teal[200],
            child: Center(
              child: ListTile(
                title: Padding(
                  padding: EdgeInsets.all(15.0.r),
                  child: Text(
                    '$title',
                    style: TextStyle(
                        color: Colors.teal[400],
                        fontSize: 65.0.sp,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                subtitle: Padding(
                  padding: EdgeInsets.fromLTRB(10.0.w, 3.0.h, 0.0.w, 40.0.h),
                  child: Text('$subTitle',style: TextStyle(
                    fontSize: 40.0.sp,
                  ),),
                ),
              ),
            ),
          ),
        ),
      ),
    ],
  );
}

Widget onTapSignButton(String title, String subText) {
  return Column(
    children: [
      TextButton(
        onPressed: () {},
        style: ButtonStyle(
          overlayColor: MaterialStateColor.resolveWith(
              (states) => Colors.transparent), //버튼 애니메이션 삭제
        ),
        child: SizedBox(
          width: 750.w,
          height: 1000.h,
          child: Card(
            shape: RoundedRectangleBorder(
                //모서리 둥글게 깎기
                borderRadius: BorderRadius.circular(20.0)),
            elevation: 2.8, //그림자 깊이
            shadowColor: Colors.teal[200],
            child: Center(
              child: ListTile(
                title: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    '$title',
                    style: TextStyle(
                        color: Colors.teal[400],
                        fontSize: 70.0.sp,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.fromLTRB(10.0, 3.0, 0.0, 40.0),
                  child: Text(
                    '$subText',
                    style: TextStyle(fontSize: 40.0.sp),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    ],
  );
}
