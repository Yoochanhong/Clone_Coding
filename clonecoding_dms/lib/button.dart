import 'package:clonecoding_dms/signup/ontapSignup.dart';
import 'package:clonecoding_dms/signup/signUpClass.dart';
import 'package:flutter/material.dart';
import 'package:clonecoding_dms/announcement/ontapAnnouncement.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:clonecoding_dms/mypage/myPage.dart';


Widget signupButton(
    String ButtonTitle, String ButtonSubTitle, context, SignUpClass instance) {
  return SizedBox(
    width: 1000.0.w,
    height: 350.0.h,
    child: TextButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => OnTapSignUp(
              signUpClass: instance,
            ),
          ),
        );
      },
      style: ButtonStyle(
        overlayColor: MaterialStateColor.resolveWith(
                (states) => Colors.transparent), //버튼 애니메이션 삭제
      ),
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

Widget mealsButton(String title, dynamic subTitle) {
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
                  child: Text(
                    '$subTitle',
                    style: TextStyle(
                      fontSize: 40.0.sp,
                    ),
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

Widget onTapSignButton(String title, String subText) {
  return Column(
    children: [
      TextButton(
        onPressed: () {},
        style: ButtonStyle(
          overlayColor: MaterialStateColor.resolveWith(
            (states) => Colors.transparent,
          ), //버튼 애니메이션 삭제
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

Widget announcementButton(int w, int h, String title, String subText, double elevation, context) {
  return TextButton(
    onPressed: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return OnTapAnnouncementPage();
      }));
    },
    style: ButtonStyle(
      overlayColor: MaterialStateColor.resolveWith(
        (states) => Colors.transparent,
      ), //버튼 애니메이션 삭제
    ),
    child: SizedBox(
      width: w.w,
      height: h.h,
      child: Card(
        shape: RoundedRectangleBorder(
            //모서리 둥글게 깎기
            borderRadius: BorderRadius.circular(20.0)),
        elevation: elevation, //그림자 깊이
        shadowColor: Colors.teal[300],
        child: Center(
          child: ListTile(
            title: Padding(
              padding: EdgeInsets.all(25.0.r),
              child: Text(
                '$title',
                style: TextStyle(
                    color: Colors.teal[400],
                    fontSize: 50.0.sp,
                    fontWeight: FontWeight.bold),
              ),
            ),
            subtitle: Padding(
              padding: EdgeInsets.fromLTRB(20.0.w, 2.0.h, 0.0.w, 40.0.h),
              child: Text(
                '$subText',
                style: TextStyle(fontSize: 40.0.sp),
              ),
            ),
          ),
        ),
      ),
    ),
  );
}

Widget myPageButton (String title, String subText) {
  return SizedBox(
    width: 900.0.w,
    height: 180.0.h,
    child: MaterialButton(
      onPressed: () {},
      color: Colors.white,
      elevation: 0,
      child: Row(
        mainAxisAlignment:
        MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment:
            CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                    top: 28.0.h, bottom: 35.0.h),
                child: Text(
                  '$title',
                  style: TextStyle(
                    color: Colors.teal[400],
                    fontSize: 45.0.sp,
                  ),
                ),
              ),
              Text(
                '$subText',
                style: TextStyle(
                  fontSize: 30.0.sp,
                ),
              ),
            ],
          ),
          Icon(
            Icons.keyboard_arrow_right_outlined,
            color: Colors.grey,
          ),
        ],
      ),
    ),
  );
}

Widget myPageScoreCard (int score, String string){
  return TextButton(
    style: ButtonStyle(
      overlayColor: MaterialStateColor.resolveWith(
            (states) => Colors.transparent,
      ), //버튼 애니메이션 삭제
    ),
    onPressed: () {},
    child: Card(
      shape: RoundedRectangleBorder(
        //모서리 둥글게 깎기
        borderRadius: BorderRadius.circular(20.0),
      ),

      child: SizedBox(
        width: 400.0.w,
        height: 200.0.h,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '$score',
                style: TextStyle(
                    fontSize: 60.0.sp,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                '$string',
                style: TextStyle(fontSize: 35.0.sp),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}