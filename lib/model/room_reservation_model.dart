import 'package:freezed_annotation/freezed_annotation.dart';
part 'room_reservation_model.g.dart';
part 'room_reservation_model.freezed.dart';

@freezed
abstract class RoomReservationModel with _$RoomReservationModel {
  const factory RoomReservationModel({
    required String roomNumber,
    required String reservationName,
    required DateTime startTime,
    required DateTime endTime,
    required Status status,
  }) = _RoomReservationModel;

  factory RoomReservationModel.fromJson(Map<String, dynamic> json) =>
      _$RoomReservationModelFromJson(json);
}

// 승인 대기중 , 승인완료,  이용완료
enum Status { pendingApproval, appreoved, completed }
