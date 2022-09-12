import 'package:flutter/material.dart';
import 'package:clonecoding_dms/main.dart';
import 'ontapSignup.dart';
import 'package:clonecoding_dms/signUpClass.dart';

class SignUp extends StatelessWidget {
  SignUp({Key? key}) : super(key: key);

  signUpClass stay = signUpClass(
      realTitle: '잔류 신청',
      title: '잔류신청을 해주세요',
      subText: '금요일 밤부터 일요일 밤까지의 상태를 정합니다. 학생들은 목요일 10시까지 잔류 신청을 완료해야 합니다.',
      firstTitle: '금요귀가',
      firstSubText: 'ㄹ',
      secondTitle: '토요귀가',
      secondSubText: 'ㄹ',
      thirdTitle: '토요귀사',
      thirdSubText: 'ㄹ',
      fourthTitle: '잔류',
      fourthSubTitle: 'ㄹ');

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: Center(
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
                    style: TextStyle(color: Colors.teal[400], fontSize: 20.0),
                  ),
                  subtitle: Padding(
                    padding: EdgeInsets.fromLTRB(5.0, 30.0, 30.0, 30.0),
                    child: Text('급식이 없습니다.'), //나중에 급식 api 따와서 변수로 넣어줄 예정
                  ),
                  onTap: () {
                    Navigator.of(context).pushNamed(
                      '/ontapSignUpPage',
                      arguments: signUpClass(
                          realTitle: stay.realTitle,
                          title: stay.title,
                          subText: stay.subText,
                          firstTitle: stay.firstTitle,
                          firstSubText: stay.firstSubText,
                          secondTitle: stay.secondTitle,
                          secondSubText: stay.secondSubText,
                          thirdTitle: stay.thirdTitle,
                          thirdSubText: stay.thirdSubText,
                          fourthTitle: stay.fourthTitle,
                          fourthSubTitle: stay.fourthSubTitle),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
