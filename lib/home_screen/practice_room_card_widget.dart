import 'package:flutter/material.dart';

class PracticeRoomCardWidget extends StatelessWidget {
  const PracticeRoomCardWidget({super.key, required this.controller, required this.onPressed});
  final DraggableScrollableController controller;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
      child: Card(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                    flex: 2,
                    child: AspectRatio(
                      aspectRatio: 1.0,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.brown[300],
                        ),
                        child: Center(
                          child: Text(
                            '큰 컨테이너',
                            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
                          ),
                        ),
                      ),
                    )),
                Expanded(
                  child: Column(
                    children: List.generate(2, (index) {
                      return AspectRatio(
                        aspectRatio: 1.0,
                        child: Container(
                            decoration: BoxDecoration(
                              color: Colors.brown[200],
                            ),
                            child: Center(
                              child: Text(
                                '컨테이너 ${index + 1}',
                                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                              ),
                            )),
                      );
                    }),
                  ),
                ),
                Expanded(
                  child: Column(
                    children: List.generate(2, (index) {
                      return AspectRatio(
                        aspectRatio: 1.0,
                        child: Container(
                            decoration: BoxDecoration(
                              color: Colors.brown[200],
                            ),
                            child: Center(
                              child: Text(
                                '컨테이너 ${index + 1}',
                                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                              ),
                            )),
                      );
                    }),
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        '드럼&기타',
                        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: 8),
                      Text(
                        '음악 교육',
                        style: TextStyle(fontSize: 16, color: Colors.grey),
                      ),
                    ],
                  ),
                  SizedBox(height: 6),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _buildIconButton(Icons.call, '전화'),
                      _buildIconButton(Icons.bookmark, '저장'),
                      _buildIconButton(Icons.map, '길찾기'),
                      _buildIconButton(Icons.share, '공유'),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Padding(
                          padding: EdgeInsets.all(8),
                          child: OutlinedButton(
                            style: OutlinedButton.styleFrom(
                                foregroundColor: Colors.black,
                                side: BorderSide(color: Colors.brown.shade200, width: 1),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                )),
                            onPressed: () {
                              onPressed();
                            },
                            child: Text('예약'),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: EdgeInsets.all(8),
                          child: OutlinedButton(
                            style: OutlinedButton.styleFrom(
                                textStyle: TextStyle(color: Colors.black),
                                foregroundColor: Colors.black,
                                side: BorderSide(color: Colors.brown.shade200, width: 1),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                )),
                            onPressed: () {},
                            child: Text('문의'),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildIconButton(IconData icon, String label) {
    return Column(
      children: [
        IconButton(
          icon: Icon(icon, size: 30, color: Colors.brown),
          onPressed: () {},
        ),
        Text(label, style: TextStyle(fontSize: 14)),
      ],
    );
  }
}
