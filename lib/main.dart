import 'package:flutter/material.dart';
import 'pages/intro_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sound:Six',

      // theme: ThemeData(
      //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      //   textTheme: TextTheme()
      // ),
      theme: ThemeData(
        // 1. 앱 전체 배경색과 앱바 색상도 여기서 미리 정의 가능
        scaffoldBackgroundColor: const Color(0xFFf5fffa),
        textTheme: const TextTheme(
          titleLarge: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          bodyLarge: TextStyle(color: Colors.white, fontSize: 16),
          bodyMedium: TextStyle(color: Color(0xFFBBBBBB), fontSize: 14),
        ),
      ),

      home: const IntroPage(),
    );
  }
}
