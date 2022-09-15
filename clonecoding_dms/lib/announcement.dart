import 'package:clonecoding_dms/signup/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Announcement extends StatelessWidget {
  const Announcement({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(60.0.r),
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '대마고\n기숙사\n안내사항',
                  style: TextStyle(
                    color: Colors.teal[400],
                    fontSize: 60.0.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 40.0.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'DMS',
                            style: TextStyle(
                              color: Colors.teal[400],
                              fontSize: 43.0.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '는 대덕 소프트웨어 마이스터고등학교',
                            style: TextStyle(fontSize: 43.0.sp),
                          ),
                        ],
                      ),
                      Text(
                        '기숙사 생활에 필요한 유용한 정보를 제공합니다.',
                        style: TextStyle(fontSize: 43.0.sp),
                      ),
                    ],
                  ),
                ),
                Center(
                  child: Padding(
                    padding: EdgeInsets.only(top: 250.0.h),
                    child: Column(
                      children: [
                        Stack(
                          clipBehavior: Clip.none,
                          children: [
                            announcementButton(850, 240, 'ㅇ', 'ㅇ'),
                            Positioned(
                              bottom: 7,
                              left: -8,
                              child: announcementButton(900, 240, 'ㅐ', 'ㅐ'),
                            ),
                            Positioned(
                              bottom: 14,
                              left: -16,
                              child: announcementButton(
                                  950, 240, '공지사항', '사감부에서 게시한 공지사항을 열람합니다.'),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 100.0.h,
                        ),
                        Stack(
                          clipBehavior: Clip.none,
                          children: [
                            announcementButton(850, 240, 'ㅐ', 'ㅇ'),
                            Positioned(
                              bottom: 7,
                              left: -8,
                              child: announcementButton(900, 240, 'ㅇ', 'ㅇ'),
                            ),
                            Positioned(
                              bottom: 14,
                              left: -16,
                              child: announcementButton(
                                  950, 240, '기숙사 규정', '기숙사 규정을 열람합니다.'),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
