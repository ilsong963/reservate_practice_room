// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'room_reservation_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RoomReservationModelImpl _$$RoomReservationModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RoomReservationModelImpl(
      roomNumber: json['roomNumber'] as String,
      reservationName: json['reservationName'] as String,
      startTime: DateTime.parse(json['startTime'] as String),
      endTime: DateTime.parse(json['endTime'] as String),
      status: $enumDecode(_$StatusEnumMap, json['status']),
    );

Map<String, dynamic> _$$RoomReservationModelImplToJson(
        _$RoomReservationModelImpl instance) =>
    <String, dynamic>{
      'roomNumber': instance.roomNumber,
      'reservationName': instance.reservationName,
      'startTime': instance.startTime.toIso8601String(),
      'endTime': instance.endTime.toIso8601String(),
      'status': _$StatusEnumMap[instance.status]!,
    };

const _$StatusEnumMap = {
  Status.pendingApproval: 'pendingApproval',
  Status.appreoved: 'appreoved',
  Status.completed: 'completed',
};
