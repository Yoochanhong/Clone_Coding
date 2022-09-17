import 'package:clonecoding_dms/button.dart';
import 'package:clonecoding_dms/mypage/bugReport.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.teal[400],
        leadingWidth: 400.0,
        //leading 길이
        leading: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:
                  EdgeInsets.only(top: 30.0.r, left: 50.0.w, bottom: 10.0.h),
              child: Text(
                '유찬홍',
                style: TextStyle(
                  fontSize: 50.0.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 50.0.w),
              child: Text(
                '1학년 1반 14번',
                style: TextStyle(
                  fontSize: 30.0.sp,
                ),
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.settings),
          ),
        ],
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              color: Colors.teal[400],
              width: 1080.0.w,
              height: 400.0.h,
              child: Padding(
                padding: EdgeInsets.all(10.0.r),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.report),
                          color: Colors.white,
                        ),
                        Text(
                          '시설 고장 신고',
                          style:
                              TextStyle(color: Colors.white, fontSize: 30.0.sp),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        IconButton(
                          onPressed: () {
                            showToast();
                          },
                          icon: Icon(Icons.edit),
                          color: Colors.white,
                        ),
                        Text(
                          '설문 조사',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30.0.sp,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        IconButton(
                          onPressed: () {
                            showPopup(context);
                          },
                          icon: Icon(Icons.bug_report),
                          color: Colors.white,
                        ),
                        Text(
                          '버그 신고',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30.0.sp,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  color: Colors.white,
                  width: 1080.0.w,
                  height: 1056.0.h,
                  child: Padding(
                    padding: EdgeInsets.all(30.0.r),
                    child: Column(
                      children: [
                        Padding(
                          padding:
                              EdgeInsets.only(top: 130.0.h, bottom: 55.0.h),
                          child: SizedBox(
                            width: 970.0.w,
                            height: 90.0.h,
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              color: Colors.teal[400],
                              child: Center(
                                child: Text(
                                  '기리보이 앨범을 듣자.',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 38.0.sp,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Center(
                          child: Column(
                            children: [
                              myPageButton('로그아웃', '기기내 계정에서 로그아웃합니다.'),
                              myPageButton('비밀번호 변경', 'DMS 계정의 비밀번호를 변경합니다.'),
                              myPageButton(
                                  '상 / 벌점 내역', '우정관 상 / 벌점 내역을 확인합니다.'),
                              myPageButton('개발자 소개', 'DMS팀의 개발자를 소개합니다.'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: -130.h,
                  left: 70.0.w,
                  child: myPageScoreCard(27, '상점'),
                ),
                Positioned(
                  top: -130.h,
                  right: 70.0.w,
                  child: myPageScoreCard(6, '벌점'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

void showToast() {
  Fluttertoast.showToast(
    msg: '오픈 준비 중입니다.',
    gravity: ToastGravity.BOTTOM,
    //toast메세지 위치
    fontSize: 50.0.sp,
    backgroundColor: Colors.grey,
    textColor: Colors.white,
    toastLength: Toast.LENGTH_LONG //toast 메시지 시간
  );
}