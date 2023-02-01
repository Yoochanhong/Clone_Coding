import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff202325),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leadingWidth: 300,
        leading: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              TextButton(onPressed: () {}, child: Text('Google 정보')),
              TextButton(onPressed: () {}, child: Text('스토어')),
            ],
          ),
        ),
        actions: [
          TextButton(onPressed: () {}, child: Text('Gmail')),
          TextButton(onPressed: () {}, child: Text('이미지')),
          IconButton(onPressed: () {}, icon: Icon(Icons.apps)),
          ElevatedButton(onPressed: () {}, child: Text('로그인')),
        ],
      ),
    );
  }
}
