import 'package:clonecoding_dms/announcement.dart';
import 'package:clonecoding_dms/mealsPage.dart';
import 'package:clonecoding_dms/myPage.dart';
import 'package:clonecoding_dms/signup/signUp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(1080, 1920),
        builder: (context, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            home: MainWidget(),
          );
        });
  }
}

class MainWidget extends StatefulWidget {
  const MainWidget({Key? key}) : super(key: key);

  @override
  State<MainWidget> createState() => _MainWidgetState();
}

class _MainWidgetState extends State<MainWidget> {
  int _index = 0;
  List<BottomNavigationBarItem> bottomItems = [
    BottomNavigationBarItem(icon: Icon(Icons.no_meals), label: '급식'),
    BottomNavigationBarItem(icon: Icon(Icons.check), label: '신청'),
    BottomNavigationBarItem(icon: Icon(Icons.announcement), label: '공지'),
    BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: '마이페이지'),
  ];
  List pages = [
    MealsPage(),
    SignUp(),
    Announcement(),
    MyPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_index],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.teal[400],
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white30,
        selectedFontSize: 14,
        unselectedFontSize: 0,
        currentIndex: _index,
        onTap: (int index) {
          setState(() {
            _index = index;
          });
        },
        items: bottomItems,
      ),
    );
  }
}
