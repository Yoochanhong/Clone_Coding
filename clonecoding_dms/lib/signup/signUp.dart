import 'package:clonecoding_dms/mealsPage.dart';
import 'package:clonecoding_dms/signup/signUpClass.dart';
import 'package:flutter/material.dart';
import 'package:clonecoding_dms/main.dart';
import 'ontapSignup.dart';
import 'button.dart';
import 'signUpClass.dart';

class SignUp extends StatelessWidget {
  SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            '신청\n',
                            style: TextStyle(
                                color: Colors.teal[400],
                                fontSize: 30.0,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '연장, 잔류, 외출, 기상 음악을 신청 할 수 있습니다.',
                            style: TextStyle(
                              fontSize: 15.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Stack(children: [
                  signupButton('잔류 신청', '금요일부터 일요일 저녁까지의 상태를 신청합니다.'),
                  SizedBox(
                    width: 350.0,
                    height: 149.0,
                    child: TextButton(
                      onPressed: () {
                        final stay = SignUpClass(
                            '잔류 신청',
                            '잔류신청을 해주세요',
                            '금요일 밤부터 일요일 밤까지의 상태를 정합니다.\n학생들은 목요일 10시까지 잔류 신청을 완료해야 합니다.',
                            '금요귀가',
                            '금요귀가를 신청하신 경우 금요일 일과 종료 후 오후 8시 30분 이후 귀가하여 일요일 오전 8시 30분 이후 기숙사로 귀사 가능합니다. 금요귀가를 신청하시겠습니까?',
                            '토요귀가',
                            '토요귀가를 신청하신 경우 토요일 오후 9시 이전에 귀가하여 일요일 오전 8시 30분 이후 기숙사로 귀사 가능합니다. 토요귀가를 신청하시겠습니까?',
                            '토요귀사',
                            '토요귀사를 신청하신 경우 어쩌고 저쩌고',
                            '잔류',
                            '잔류를 신청하신 경우 어쩌고 저쩌고',
                            '확인');
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => OnTapSignUp(
                              signUpClass: stay,
                            ),
                          ),
                        );
                      },
                      child: Padding(
                          padding: EdgeInsets.only(left: 8.0, top: 10.0)),
                      style: ButtonStyle(
                        overlayColor: MaterialStateColor.resolveWith(
                            (states) => Colors.transparent), //버튼 애니메이션 삭제
                      ),
                    ),
                  ),
                ]),
                //signupButton('주말급식 신청', '주말급식을 신청할 수 있습니다.'),
                //signupButton('외출 신청', '외출신청서를 작성하여 외출할 수 있습니다.')
              ],
            ),
          ),
        ),
      ),
    );
  }
}
