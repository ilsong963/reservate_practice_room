import 'package:flutter/material.dart';

class ReservationItemWidget extends StatelessWidget {
  const ReservationItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Padding(
            padding: EdgeInsets.all(16),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text("24.12.7 토"),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 2),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Icon(Icons.music_note),
                      ),
                      SizedBox(height: 8),
                      Container(
                        width: 2,
                        height: 130,
                        color: Colors.grey[400],
                      ),
                    ],
                  ),
                  SizedBox(width: 12), // 간격 추가
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min, // 내용 크기에 맞게 설정
                      children: [
                        // 가게 이름 + 메뉴 아이콘
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "을지로점",
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            Icon(Icons.more_vert, color: Colors.grey),
                          ],
                        ),
                        SizedBox(height: 4),
                        // 위치 정보
                        Row(
                          children: [
                            Icon(Icons.place, color: Colors.grey, size: 16),
                            SizedBox(width: 4),
                            Text("한식 · 서울 중구 을지로3가", style: TextStyle(color: Colors.grey[700])),
                          ],
                        ),
                        SizedBox(height: 12),
                        // 예약 시간 및 방문 횟수
                        Row(
                          children: [
                            Icon(Icons.access_time, color: Colors.grey, size: 16),
                            SizedBox(width: 4),
                            Text(
                              "오후 5:00 · 1번째 방문",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        SizedBox(height: 12),
                        // 버튼 그룹 (한 줄 유지)
                        Row(
                          children: [
                            Expanded(
                              child: OutlinedButton.icon(
                                onPressed: () {},
                                icon: Icon(Icons.replay, size: 18),
                                label: Text("다시 예약"),
                              ),
                            ),
                            SizedBox(width: 8), // 간격 추가
                            Expanded(
                              child: OutlinedButton.icon(
                                onPressed: () {},
                                icon: Icon(Icons.list, size: 18),
                                label: Text("예약 내역"),
                              ),
                            ),
                            SizedBox(width: 8), // 간격 추가
                            Expanded(
                              child: ElevatedButton.icon(
                                onPressed: () {},
                                icon: Icon(Icons.edit, size: 18),
                                label: Text("리뷰 쓰기"),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.blueAccent,
                                  foregroundColor: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ])));
  }
}
