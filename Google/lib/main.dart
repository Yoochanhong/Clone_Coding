import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.white,
        primarySwatch: const MaterialColor(0xFFFFFFFF, {
          50: Color(0xFFFFFFFF),
          100: Color(0xFFFFFFFF),
          200: Color(0xFFFFFFFF),
          300: Color(0xFFFFFFFF),
          400: Color(0xFFFFFFFF),
          500: Color(0xFFFFFFFF),
          600: Color(0xFFFFFFFF),
          700: Color(0xFFFFFFFF),
          800: Color(0xFFFFFFFF),
          900: Color(0xFFFFFFFF),
        }),
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff202325),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leadingWidth: 300,
        leading: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              TextButton(
                onPressed: () {},
                child: Text(
                  'Google 정보',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
              ),
              TextButton(onPressed: () {}, child: const Text('스토어')),
            ],
          ),
        ),
        actions: [
          TextButton(onPressed: () {}, child: const Text('Gmail')),
          const SizedBox(width: 8.0),
          TextButton(onPressed: () {}, child: const Text('이미지')),
          const SizedBox(width: 8.0),
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.apps), color: Colors.white),
          const SizedBox(width: 8.0),
          MaterialButton(
            color: const Color(0xFF87AEEE),
            onPressed: () {},
            child: const Text('로그인'),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 272,
              height: 92,
              child: Image.asset('assets/googleLogo.png'),
            ),
            const TextField(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MaterialButton(
                  elevation: 0,
                  color: const Color(0xff313235),
                  onPressed: () {},
                  child: Text(
                    'Google 검색',
                    style:
                        TextStyle(color: Theme.of(context).colorScheme.primary),
                  ),
                ),
                const SizedBox(width: 15),
                MaterialButton(
                  elevation: 0,
                  color: const Color(0xff313235),
                  onPressed: () {},
                  child: Text(
                    'I\'m Feeling Lucky',
                    style:
                        TextStyle(color: Theme.of(context).colorScheme.primary),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
