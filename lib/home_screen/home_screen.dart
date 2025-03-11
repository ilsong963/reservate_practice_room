import 'package:flutter/material.dart';
import 'package:reservate_practice_room/home_screen/practice_room_card_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  late DraggableScrollableController _scrollController;
  int sheetIndex = 0;

  @override
  void initState() {
    super.initState();
    _scrollController = DraggableScrollableController();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _onCardPressed(int index) {
    setState(() {
      sheetIndex = index;
    });

    // DraggableScrollableSheet가 렌더링된 후 실행
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_scrollController.isAttached) {
        _scrollController.animateTo(
          0.8, // 최대 높이
          duration: Duration(milliseconds: 300),
          curve: Curves.easeInOut,
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffeaebef),
      body: SafeArea(
        child: Stack(
          children: [
            ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return PracticeRoomCardWidget(
                    controller: _scrollController,
                    onPressed: () => _onCardPressed(index),
                  );
                }),
            DraggableScrollableSheet(
              controller: _scrollController,
              initialChildSize: 0.05, // 초기 높이를 5%로 설정
              minChildSize: 0.05, // 최소 높이를 5%로 설정
              maxChildSize: 0.8, // 최대 높이를 80%로 설정
              builder: (context, scrollController) {
                return Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 10,
                          spreadRadius: 5,
                          offset: Offset(0, -5), // 그림자의 위치 조정
                        ),
                      ],
                    ),
                    child: Stack(
                      children: [
                        // 손잡이 역할을 하는 위젯
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 16),
                              width: 50,
                              height: 5,
                              decoration: BoxDecoration(
                                color: Colors.grey[400],
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ],
                        ),
                        Positioned.fill(
                            child: ListView.builder(
                          padding: EdgeInsets.only(top: 1),
                          controller: scrollController,
                          physics: ClampingScrollPhysics(), // 스크롤 바운스 제거
                          itemCount: 10,
                          itemBuilder: (context, index) {
                            return ListTile(title: Text('Item $sheetIndex'));
                          },
                        )),
                      ],
                    ));
              },
            ),
          ],
        ),
      ),
    );
  }
}
