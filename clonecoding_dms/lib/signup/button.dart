import 'package:flutter/material.dart';

Widget signupButton(String title, String subTitle) {
  return Column(
    children: [
      TextButton(
        onPressed: () {},
        style: ButtonStyle(
          overlayColor: MaterialStateColor.resolveWith(
                  (states) => Colors.transparent), //버튼 애니메이션 삭제
        ),
        child: Card(
          shape: RoundedRectangleBorder(
            //모서리 둥글게 깎기
              borderRadius: BorderRadius.circular(20.0)),
          elevation: 2.8,//그림자 깊이
          shadowColor: Colors.teal[200],
          child: Center(
            child: ListTile(
              title: Padding(
                padding: const EdgeInsets.only(left: 10.0, top: 40.0),
                child: Text(
                  '$title',
                  style: TextStyle(
                    color: Colors.teal[400],
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.fromLTRB(10.0, 3.0, 0.0, 40.0),
                child: Text('$subTitle'),
              ),
            ),
          ),
        ),
      ),
    ],
  );
}


Widget mealsButton(String title, String subTitle) {
  return Column(
    children: [
      TextButton(
        onPressed: () {},
        style: ButtonStyle(
          overlayColor: MaterialStateColor.resolveWith(
                  (states) => Colors.transparent), //버튼 애니메이션 삭제
        ),
        child: SizedBox(
          height: 160.0,
          width: 500.0,
          child: Card(
            shape: RoundedRectangleBorder(
              //모서리 둥글게 깎기
                borderRadius: BorderRadius.circular(20.0)),
            elevation: 2.8,//그림자 깊이
            shadowColor: Colors.teal[200],
            child: Center(
              child: ListTile(
                title: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    '$title',
                    style: TextStyle(
                        color: Colors.teal[400],
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.fromLTRB(10.0, 3.0, 0.0, 40.0),
                  child: Text('$subTitle'),
                ),
              ),
            ),
          ),
        ),
      ),
    ],
  );
}
