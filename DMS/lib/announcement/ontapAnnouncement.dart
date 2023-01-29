import 'package:flutter/material.dart';

class OnTapAnnouncementPage extends StatelessWidget {
  const OnTapAnnouncementPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Row(
                  children: [
                    Column(
                      children: [
                        Text('공지사항'),
                        Text('사감부에서 게시한 공지사항을 열람합니다.'),
                      ],
                    ),
                    Icon(Icons.dangerous),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
