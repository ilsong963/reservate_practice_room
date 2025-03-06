import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intl/intl.dart';
import 'package:reservate_practice_room/home_screen/date_picker_widget.dart';
import 'package:reservate_practice_room/home_screen/time_dropdown_widget.dart';
import 'package:reservate_practice_room/model/room_reservation_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  DateTime selectedDate = DateTime.now();
  TimeOfDay startTime = TimeOfDay(hour: 0, minute: 0);
  TimeOfDay endTime = TimeOfDay(hour: 1, minute: 0);
  List<RoomReservationModel> roomReservations = [];
  Set<int> reservedRoomNumbers = {};

  final db = FirebaseFirestore.instance;
  @override
  void initState() {
    super.initState();
    _fetchRoomRedervationData(_setTimetoZero(selectedDate));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      Text(
        DateFormat('yyyy-MM-dd').format(selectedDate),
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
      ),
      TimeDropdownWidget(onStartTimeChanged: (time) => startTime = time, onEndTimeChanged: (time) => endTime = time),
      // DatePickerWidget(
      //   onDateChanged: (value) {
      //     selectedDate = value;
      //     _fetchRoomRedervationData(_setTimetoZero(selectedDate));
      //   },
      //   selectedDate: selectedDate,
      //   startDate: DateTime.now(),
      //   endDate: _getNextNextSunday(DateTime.now()),
      // ),
      Expanded(
          child: Padding(
        padding: EdgeInsets.all(10),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 5,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
          ),
          itemCount: 25,
          itemBuilder: (context, index) {
            int roomNumber = index + 1;
            return Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  width: 4,
                  color: reservedRoomNumbers.contains(index + 1) ? Colors.grey : Colors.blue,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(child: Text('$roomNumber', style: TextStyle(fontSize: 16))),
            );
          },
        ),
      ))
    ]));
  }

  DateTime _getNextNextSunday(DateTime today) {
    int daysUntilSunday = DateTime.sunday - today.weekday;
    if (daysUntilSunday <= 0) {
      daysUntilSunday += 7; // 다음 주 일요일로 이동
    }
    return today.add(Duration(days: daysUntilSunday + 7));
  }

  void _fetchRoomRedervationData(DateTime date) async {
    try {
      final querySnapshot = await db
          .collection('RoomReservation')
          .where('startTime', isGreaterThan: _setTimetoZero(date).millisecondsSinceEpoch)
          .where('startTime', isLessThan: _setTimetoZero(date).add(Duration(days: 1)).millisecondsSinceEpoch)
          .where('status', isEqualTo: 'appreoved')
          .get();

      setState(() {
        roomReservations = querySnapshot.docs.map((e) => RoomReservationModel.fromJson(e.data())).toList();
        reservedRoomNumbers = roomReservations.map((e) => e.roomNumber).toSet();
      });
    } catch (error) {
      log('fetchRoomRedervationData error: $error');
    }
  }

  DateTime _setTimetoZero(DateTime date) {
    return DateTime(date.year, date.month, date.day, 0, 0, 0, 0, 0);
  }
}
