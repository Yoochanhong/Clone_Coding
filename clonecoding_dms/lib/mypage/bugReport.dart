import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void showPopup(context) {
  showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            //모서리 둥글게 깎기
              borderRadius: BorderRadius.circular(20.0)),
          child: SizedBox(
            width: 900.0.w,
            height: 650.0.h,
            child: Card(
              elevation: 0,
              shape: RoundedRectangleBorder(
                //모서리 둥글게 깎기
                  borderRadius: BorderRadius.circular(20.0)),
              child: Padding(
                padding: EdgeInsets.all(30.0.r),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 8.0.h),
                      child: Row(
                        children: [
                          Icon(
                            Icons.bug_report_rounded,
                            color: Colors.teal[400],
                            size: 80.0.sp,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 20.0.w),
                            child: Text(
                              '버그신고',
                              style: TextStyle(
                                fontSize: 50.0.sp,
                                color: Colors.teal[400],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        hintText: '제목',
                        labelText: '제목',
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide: BorderSide(width: 2, color: Colors.teal),
                        ),
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        hintText: '버그',
                        labelText: '버그',
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide: BorderSide(width: 2, color: Colors.teal),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 30.0.w, right: 30.0.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text(
                              '취소',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              '전송',
                              style: TextStyle(
                                color: Colors.teal[400],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      });
}