import 'package:flutter/material.dart';
import 'package:clonecoding_dms/main.dart';
import 'ontapSignup.dart';
import 'package:clonecoding_dms/signup/signUpClass.dart';
import 'button.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              children: [
                Row(
                  children: [
                    Column(
                      children: [
                        Text(
                          '신청\n',
                          style: TextStyle(
                              color: Colors.teal[400],
                              fontSize: 30.0,
                              fontWeight: FontWeight.bold),
                        ),
                        Text('연장, 잔류, 외출, 기상 음악을 신청 할 수 있습니다.'),
                      ],
                    ),

                  ],
                ),
                signupButton('연장 신청', '학과시간 이후에 추가적으로 연장학습을 할 수 있습니다.'),
                signupButton('잔류 신청', '금요일부터 일요일 저녁까지의 상태를 신청합니다.'),
                signupButton('주말급식 신청', '주말급식을 신청할 수 있습니다.'),
                signupButton('외출 신청', '외출신청서를 작성하여 외출할 수 있습니다.')
              ],
            ),
          ),
        ),
      ),
    );
  }
}
