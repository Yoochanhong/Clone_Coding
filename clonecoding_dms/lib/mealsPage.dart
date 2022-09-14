import 'package:clonecoding_dms/signup/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MealsPage extends StatefulWidget {
  const MealsPage({Key? key}) : super(key: key);

  @override
  State<MealsPage> createState() => _MealsPageState();
}

class _MealsPageState extends State<MealsPage>
    with SingleTickerProviderStateMixin {
  //상태가 잆는 위젯은 상태값들을 보존하고 추적할 수 있다.
  TabController? _tabController;
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Center(
          child: Column(
            children: [
              TabBar(
                indicatorColor: Colors.transparent,
                controller: _tabController,
                tabs: [
                  Tab(
                    icon: Icon(
                      Icons.chevron_left,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    '2022년 9월 12일\n         월요일',
                    style: TextStyle(color: Colors.black,
                    fontSize: 35.w),
                  ),
                  Tab(
                    icon: Icon(
                      Icons.chevron_right,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              Container(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(15.0, 40.0, 15.0, 0.0),
                  child: Column(
                    children: [
                      mealsButton('아침', '급식이 없습니다.'),
                      mealsButton('점심', '급식이 없습니다.'),
                      mealsButton('저녁', '급식이 없습니다.'),
                    ],
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
