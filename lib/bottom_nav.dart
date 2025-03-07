import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BottomNavigationBarScaffold extends StatefulWidget {
  const BottomNavigationBarScaffold({super.key, required this.child});
  final Widget child;

  @override
  State<BottomNavigationBarScaffold> createState() => _BottomNavigationBarScaffoldState();
}

class _BottomNavigationBarScaffoldState extends State<BottomNavigationBarScaffold> {
  int selectedIndex = 0;

  void onTap(int index) {
    setState(() {
      selectedIndex = index;
    });
    switch (index) {
      case 0:
        context.go('/home');
        break;
      case 1:
        context.go('/reservation');
        break;
      case 2:
        context.go('/info');
      // 추가 탭이 있다면 여기에 구현
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.child,
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTap,
        currentIndex: selectedIndex,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: '홈'),
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: '예약'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: '내 정보'),
          // 추가 탭이 있다면 여기에 아이템 추가
        ],
      ),
    );
  }
}
