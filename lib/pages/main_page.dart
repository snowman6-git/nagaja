import 'package:flutter/material.dart';
import 'home_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key}); //this를 걸어야 초기화가 됌

  @override
  State<StatefulWidget> createState() {
    return _MainPage();
  }
}

class _MainPage extends State<MainPage> {
  // 가본값을 2로 두어 5메뉴중 중앙꺼를 기본으로 설정
  int _currentIndex = 2;

  // 갈아끼울수 있는 페이지들(바텀 내비로)
  final List<Widget> _children = [
    const HomePage(),
    const HomePage(),
    const HomePage(),
    const HomePage(),
    const HomePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(
        "나가자",
        style: TextStyle(
            color: Colors.black
        ),
      ), backgroundColor: Color(0xFFf5fffa)), // 헤더 고정

      // 소위말하는 햄버거 메뉴
      drawer: Drawer(
        child: ListView(),
        backgroundColor: Color(0xFFf5fffa),
      ),

      body: _children[_currentIndex], // 칠드런 변수안의 인덱스 기반으로 호출 (리스트라 이해 ㄱ)

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) => setState(() => _currentIndex = index),
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.green, // 선택된 아이콘 색상
        unselectedItemColor: Colors.grey,
        backgroundColor: Color(0xFFf5fffa),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.star), label: '핫플'),
          BottomNavigationBarItem(icon: Icon(Icons.flag_outlined), label: '추천 루트'),
          BottomNavigationBarItem(icon: Icon(Icons.directions_bus), label: '홈'),
          BottomNavigationBarItem(icon: Icon(Icons.calendar_month), label: '시간표'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: '설정'),
        ],
      ),
    );
  }
}