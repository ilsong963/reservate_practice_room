import 'package:flutter/material.dart';
import 'package:reservate_practice_room/reservation_screen/reservation_chip_list.dart';
import 'package:reservate_practice_room/reservation_screen/reservation_item_widget.dart';

class ReservationScreen extends StatelessWidget {
  const ReservationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("예약내역"),
        ),
        body: SafeArea(
            child: SingleChildScrollView(
          child: Column(
            children: [
              ReservationChipList(),
              Divider(),
              ReservationItemWidget(),
              ReservationItemWidget(),
              ReservationItemWidget(),
              ReservationItemWidget(),
            ],
          ),
        )));
  }
}
