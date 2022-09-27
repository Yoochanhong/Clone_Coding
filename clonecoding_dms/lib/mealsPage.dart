import 'package:clonecoding_dms/button.dart';
import 'package:clonecoding_dms/getMeals.dart';
import 'package:clonecoding_dms/meals.dart';
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
  var now = DateTime.now();

  String getSystemTime() {
    var now = DateTime.now();
    return DateFormat("yyy년 MM월 d일").format(now);
  }

  @override
  void initState() {
    super.initState();
    meals = getMeals();
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
                          );
                        },
                      ),
                      Text(DateFormat(' EEEE ').format(now)),
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
                        child: FutureBuilder(
                            future: meals,
                            builder: (BuildContext context,
                                AsyncSnapshot<Meals> snapshot) {
                              if (snapshot.hasData) {
                                return Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    mealsButton('아침', snapshot.data!.breakfast.toString()),
                                    mealsButton('점심', snapshot.data!.lunch.toString()),
                                    mealsButton('저녁', snapshot.data!.dinner.toString()),
                                  ],
                                );
                              } else if (snapshot.hasError) {
                                return Text('error');
                              } else {
                                return CircularProgressIndicator();
                              }
                            }),
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
