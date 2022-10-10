import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Join extends StatefulWidget {
  const Join({Key? key}) : super(key: key);

  @override
  State<Join> createState() => _JoinState();
}

class _JoinState extends State<Join> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[400],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Padding(
              padding:
              EdgeInsets.only(top: 140.0.h, left: 140.0.w, bottom: 90.0.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/dmsLogo.png',
                    width: 150.0.w,
                    height: 150.0.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 50.0.h, bottom: 20.0.h),
                    child: Text(
                      'DMS for Flutter',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  Text(
                    'Dormitory Management System',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 11,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: 1080.0.w,
            height: 1390.0.h,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50.0.r),
                  topRight: Radius.circular(50.0.r),
                ),
              ),
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 70.0.h, bottom: 40.0.h),
                          child: Text(
                            '확인코드 입력',
                            style: TextStyle(
                              fontSize: 50.0.sp,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 800.0.w,
                          height: 120.0.h,
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: '아이디를 입력해주세요',
                              focusColor: Colors.teal[400],
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.black,
                                ),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.teal),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 40.0.h, bottom: 40.0.h),
                          child: Text(
                            '아이디',
                            style: TextStyle(
                              fontSize: 50.0.sp,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 800.0.w,
                          height: 120.0.h,
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: '비밀번호를 입력해주세요',
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.teal,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 40.0.h, bottom: 40.0.h),
                          child: Text(
                            '비밀번호',
                            style: TextStyle(
                              fontSize: 50.0.sp,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 800.0.w,
                          height: 120.0.h,
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: '비밀번호를 입력해주세요',
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.teal,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 40.0.h, bottom: 40.0.h),
                          child: Text(
                            '비밀번호 재입력',
                            style: TextStyle(
                              fontSize: 50.0.sp,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 800.0.w,
                          height: 120.0.h,
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: '비밀번호를 입력해주세요',
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.teal,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    ButtonTheme(
                      minWidth: 1000.0.w,
                      height: 120.0.h,
                      shape: RoundedRectangleBorder(
                        //버튼을 둥글게 처리
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(top: 220.0.h),
                        child: MaterialButton(
                          onPressed: () {},
                          child: Text(
                            '회원가입',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          color: Colors.teal[300],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
