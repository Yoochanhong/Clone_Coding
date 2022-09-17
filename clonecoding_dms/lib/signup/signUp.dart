import 'package:clonecoding_dms/signup/signUpClass.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../button.dart';

class SignUp extends StatelessWidget {
  SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
        '확인',
        4,
        '잔류',
        '잔류를 신청하신 경우 어쩌고 저쩌고');
    final weekend = SignUpClass(
      '주말급식 신청',
      '주말급식을 신청해주세요',
      '주말에 배식을 받을것인지에 대한 여부를 결정합니다.\n주말급식 신청여부는 담임선생님께서 확인하신 후\n영양사선생님께 전달되니 신중히 결정해주세요.',
      '신청대기중',
      '아직 주말급식 신청을 하지 않은 상태입니다. 주말급식신청 기간내에 신청, 미신청 둘중 하나를 선택해주세요.',
      '신청',
      '주말급식을 신청합니다. 토요일은 2끼(아침, 점심)이 제공되고, 일요일은 3끼(아침, 점심, 저녁)가 제공됩니다.',
      '미신청',
      '주말급식을 신청하지 않습니다.',
      '확인',
      3,
      'ㅇ',
      'ㅇ',
    );
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 50.0.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(
                              left: 50.0.w, top: 50.0.h, bottom: 20.0.h),
                          child: Text(
                            '신청',
                            style: TextStyle(
                                color: Colors.teal[400],
                                fontSize: 70.0.sp,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 50.0.w),
                          child: Text(
                            '연장, 잔류, 외출, 기상 음악을 신청 할 수 있습니다.',
                            style: TextStyle(
                              fontSize: 40.0.sp,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              signupButton(
                  '연장 신청', '학과시간 이후에 추가적으로 연장학습을 할 수 있습니다.', context, stay),
              signupButton(
                  '잔류 신청', '금요일부터 일요일 저녁까지의 상태를 신청합니다.', context, stay),
              signupButton('주말급식 신청', '주말급식을 신청할 수 있습니다.', context, weekend),
              signupButton(
                  '외출 신청', '외출신청서를 작성하여 외출할 수 있습니다.', context, weekend),
            ],
          ),
        ),
      ),
    );
  }
}
