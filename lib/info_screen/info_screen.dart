import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: InfoScreen(),
    );
  }
}

class InfoScreen extends StatelessWidget {
  const InfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('정보'),
          centerTitle: true,
        ),
        body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: ListView(children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: <Widget>[
                    // 프로필 이미지
                    Center(
                      child: GestureDetector(
                        onTap: () {
                          // 프로필 사진 변경 기능 추가
                        },
                        child: CircleAvatar(
                          radius: 50,
                          backgroundImage: NetworkImage('https://via.placeholder.com/150'), // 프로필 이미지 URL
                        ),
                      ),
                    ),
                    SizedBox(height: 20),

                    // 사용자 이름
                    Text(
                      '홍길동',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),

                    // 이메일 (선택사항)
                    Text(
                      'email@example.com',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey[600],
                      ),
                    ),

                    // 알림 설정
                    ListTile(
                      title: Text('알림 설정'),
                      trailing: Switch(
                        value: true, // 알림 활성화 여부
                        onChanged: (bool value) {
                          // 알림 설정 변경 처리
                        },
                      ),
                    ),
                    Divider(),

                    // 설정
                    ListTile(
                      title: Text('설정'),
                      trailing: Icon(Icons.settings),
                      onTap: () {
                        // 설정 페이지로 이동
                      },
                    ),
                    Divider(),

                    // 오픈소스 라이선스
                    ListTile(
                      title: Text('오픈소스 라이선스'),
                      trailing: Icon(Icons.info_outline),
                      onTap: () {
                        // 오픈소스 라이선스 화면으로 이동
                      },
                    ),
                    Divider(),

                    // 버전 정보
                    ListTile(
                      title: Text('버전 정보'),
                      subtitle: Text('버전 1.0.0'),
                      trailing: Icon(Icons.info_outline),
                      onTap: () {
                        // 버전 정보 화면으로 이동
                      },
                    ),
                    Divider(),

                    ListTile(
                      title: Text('로그아웃'),
                      onTap: () {
                        // 버전 정보 화면으로 이동
                      },
                    ),
                  ],
                ),
              ),
            ])));
  }
}
