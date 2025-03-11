import 'package:flutter/material.dart';

class ReservationChipList extends StatelessWidget {
  const ReservationChipList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50, // 가로 리스트의 높이 지정
      child: ListView.builder(
        scrollDirection: Axis.horizontal, // 가로 스크롤
        itemCount: 5, // Chip 개수
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Chip(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  side: BorderSide(
                    width: 1.5,
                  ),
                ),
                label: Text('Chip $index'),
                backgroundColor: Colors.white),
          );
        },
      ),
    );
  }
}
