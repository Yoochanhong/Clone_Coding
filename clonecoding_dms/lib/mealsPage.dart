import 'package:clonecoding_dms/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:timer_builder/timer_builder.dart';

class MealsPage extends StatefulWidget {
  const MealsPage({Key? key}) : super(key: key);

  @override
  State<MealsPage> createState() => _MealsPageState();
}

class _MealsPageState extends State<MealsPage>
    with SingleTickerProviderStateMixin {
  //상태가 잆는 위젯은 상태값들을 보존하고 추적할 수 있다.

  PageController page = PageController(initialPage: 5);
  int pageIndex = 5;

  @override
  Widget build(BuildContext context) {
    String getSystemTime() {
      var now = DateTime.now();
      return DateFormat("yyyy년 MM월 dd일").format(now);
    }

    return SafeArea(
      child: Container(
        child: Center(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    onPressed: () {
                      page.animateToPage(--pageIndex,
                          duration: Duration(milliseconds: 400),
                          curve: Curves.linearToEaseOut);
                    },
                    icon: Icon(
                      Icons.keyboard_arrow_left_rounded,
                      size: 100.0.sp,
                    ),
                  ),
                  Column(
                    children: [
                      TimerBuilder.periodic(
                        (Duration(days: 1)),
                        builder: (context) {
                          return Text(
                            '${getSystemTime()}',
                            style: TextStyle(
                              fontSize: 40.0.sp,
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                  IconButton(
                    onPressed: () {
                      page.animateToPage(++pageIndex,
                          duration: Duration(milliseconds: 400),
                          curve: Curves.linearToEaseOut);
                    },
                    icon: Icon(
                      Icons.keyboard_arrow_right_rounded,
                      size: 100.0.sp,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(15.0.w, 40.0.h, 15.0.w, 0.0.h),
                child: SizedBox(
                  width: 1000.0.w,
                  height: 1400.0.h,
                  child: PageView.builder(
                    controller: page,
                    itemCount: 11, //페이지 수
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            mealsButton('아침', '급식이 없습니다.'),
                            mealsButton('점심', '급식이 없습니다.'),
                            mealsButton('저녁', '급식이 없습니다.'),
                          ],
                        ),
                      );
                    }, //page 의 반목문 항목 형성
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
