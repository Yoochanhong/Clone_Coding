import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:flutter/material.dart';
import 'package:toss/presentation/main/main_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with AfterLayoutMixin {
  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {
    Future.delayed(const Duration(seconds: 1)).then((value) =>
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => const MainScreen()),
            (route) => false));
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        "assets/splash/splash.png",
        width: 192,
        height: 192,
      ),
    );
  }
}
