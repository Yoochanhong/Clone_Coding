import 'package:flutter/material.dart';

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
                    '2022년 9월 12일\n월요일',
                    style: TextStyle(color: Colors.black),
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
                  padding: EdgeInsets.fromLTRB(15.0, 70.0, 15.0, 0.0),
                  child: Column(
                    children: [
                      Card(
                        shape: RoundedRectangleBorder(
                            //모서리 둥글게 깎기
                            borderRadius: BorderRadius.circular(16.0)),
                        elevation: 3.0, //그림자 깊이
                        child: ListTile(
                          title: Text(
                            '아침',
                            style: TextStyle(
                                color: Colors.teal[400], fontSize: 20.0),
                          ),
                          subtitle: Padding(
                            padding: EdgeInsets.fromLTRB(5.0, 30.0, 30.0, 30.0),
                            child:
                                Text('급식이 없습니다.'), //나중에 급식 api 따와서 변수로 넣어줄 예정
                          ),
                        ),
                      ),
                      SizedBox(height: 15.0),
                      Card(
                        shape: RoundedRectangleBorder(
                            //모서리 둥글게 깎기
                            borderRadius: BorderRadius.circular(16.0)),
                        elevation: 3.0, //그림자 깊이
                        child: ListTile(
                          title: Text(
                            '점심',
                            style: TextStyle(
                                color: Colors.teal[400], fontSize: 20.0),
                          ),
                          subtitle: Padding(
                            padding: EdgeInsets.fromLTRB(5.0, 30.0, 30.0, 30.0),
                            child:
                                Text('급식이 없습니다.'), //나중에 급식 api 따와서 변수로 넣어줄 예정
                          ),
                        ),
                      ),
                      SizedBox(height: 15.0),
                      Card(
                        shape: RoundedRectangleBorder(
                            //모서리 둥글게 깎기
                            borderRadius: BorderRadius.circular(16.0)),
                        elevation: 3.0, //그림자 깊이
                        child: ListTile(
                          title: Text(
                            '저녁',
                            style: TextStyle(
                                color: Colors.teal[400], fontSize: 20.0),
                          ),
                          subtitle: Padding(
                            padding: EdgeInsets.fromLTRB(5.0, 30.0, 30.0, 30.0),
                            child:
                                Text('급식이 없습니다.'), //나중에 급식 api 따와서 변수로 넣어줄 예정
                          ),
                        ),
                      ),
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
