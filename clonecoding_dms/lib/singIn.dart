import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[400],
      body: Container(
        child: Padding(
          padding: EdgeInsets.all(140.0.r),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'assets/dmsLogo.png',
                width: 150.0.w,
                height: 150.0.h,
              ),
              Padding(
                padding: EdgeInsets.only(top: 50.0.h, bottom: 20.0.h),
                child: Text(
                  'DMS for Flutter',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ),
              Text('Dormitory Management System',
              style: TextStyle(
                color: Colors.white,
              ),),
            ],
          ),
        ),
      ),
    );
  }
}
