import 'package:clonecoding_dms/button.dart';
import 'package:clonecoding_dms/meals/getMeals.dart';
import 'package:clonecoding_dms/meals/meals.dart';
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
  Future<Meals>? meals;
  PageController page = PageController(initialPage: 3);
  int pageIndex = 3;
  String? daysOfWeek; //요일
  String noMeals = '급식이 없습니다.';
  var now = DateTime.now();
  var Week = {
    'Sun' : '일',
    'Mon' : '월',
    'Tue' : '화',
    'Wed' : '수',
    'Thu' : '목',
    'Fri' : '금',
    'Sat' : '토',
  };

  String getSystemTime() {
    return DateFormat("yyy년 MM월 dd일").format(now);
  }

  String getWeek(){
    String? getDay = Week[DateFormat('E').format(now)];
    String dateStr = DateFormat(getDay!+ '요일').format(now);
    return dateStr;
  }

  @override
  void initState() {
    super.initState();
    meals = getMeals();
    daysOfWeek = getWeek();
  }

  @override
  Widget build(BuildContext context) {
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
                          duration: Duration(milliseconds: 300),
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
                          );
                        },
                      ),
                      Text(daysOfWeek.toString()),
                    ],
                  ),
                  IconButton(
                    onPressed: () {
                      page.animateToPage(++pageIndex,
                          duration: Duration(milliseconds: 300),
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
                  child: FutureBuilder(
                    future: meals,
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        return PageView.builder(
                          controller: page,
                          itemCount: 11,
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                              child: Column(
                                children: [
                                  mealsButton(
                                      '아침',
                                      snapshot.data!.date!.breakfast
                                          .toString()),
                                  mealsButton('점심',
                                      snapshot.data!.date!.lunch.toString()),
                                  mealsButton('저녁',
                                      snapshot.data!.date!.dinner.toString()),
                                ],
                              ),
                            );
                          },
                        );
                      } else if (snapshot.hasError) {
                        return Container(
                          child: Column(
                            children: [
                              mealsButton('아침', '급식이 없습니다.'),
                              mealsButton('점심', '급식이 없습니다.'),
                              mealsButton('저녁', '급식이 없습니다.'),
                            ],
                          ),
                        );
                      } else
                        return Container(
                          child: Column(
                            children: [
                              mealsButton('아침', '네트워크 상태를 확인해주세요.'),
                              mealsButton('점심', '네트워크 상태를 확인해주세요.'),
                              mealsButton('저녁', '네트워크 상태를 확인해주세요.'),
                            ],
                          ),
                        );
                    },
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
