import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intl/intl.dart';
import 'package:reservate_practice_room/model/room_reservation_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
  }

  final Stream<QuerySnapshot> _usersStream = FirebaseFirestore.instance.collection('RoomReservation').orderBy("startTime").snapshots();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: StreamBuilder<QuerySnapshot>(
      stream: _usersStream,
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.hasError) {
          return const Text('Something went wrong');
        }

        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Text("Loading");
        }

        return ListView(
          children: snapshot.data!.docs
              .map((DocumentSnapshot document) {
                var data = RoomReservationModel.fromJson(document.data() as Map<String, dynamic>);
                return Column(
                  children: [
                    Text('방 번호: ${data.roomNumber}'),
                    Text('예약자: ${data.reservationName}'),
                    Text('시간: ${convertTime(data.startTime)}~${convertTime(data.endTime)}'),
                    if (data.status == Status.pendingApproval) Text('승인 대기중') else if (data.status == Status.appreoved) Text('승인 완료') else Text('이용 완료'),
                    const Divider(),
                  ],
                );
              })
              .toList()
              .cast(),
        );
      },
    ));
  }

  String convertTime(int time) {
    return DateFormat('yyyy-MM-dd HH:00').format(DateTime.fromMillisecondsSinceEpoch(time).add(const Duration(hours: 9)));
  }
}
