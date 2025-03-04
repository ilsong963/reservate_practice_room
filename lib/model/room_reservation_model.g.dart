// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'room_reservation_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RoomReservationModelImpl _$$RoomReservationModelImplFromJson(Map<String, dynamic> json) => _$RoomReservationModelImpl(
      roomNumber: (json['roomNumber'] as num).toInt(),
      reservationName: json['reservationName'] as String,
      startTime: (json['startTime'] as num).toInt(),
      endTime: (json['endTime'] as num).toInt(),
      status: $enumDecode(_$StatusEnumMap, json['status']),
    );

Map<String, dynamic> _$$RoomReservationModelImplToJson(_$RoomReservationModelImpl instance) => <String, dynamic>{
      'roomNumber': instance.roomNumber,
      'reservationName': instance.reservationName,
      'startTime': instance.startTime,
      'endTime': instance.endTime,
      'status': _$StatusEnumMap[instance.status]!,
    };

const _$StatusEnumMap = {
  Status.pendingApproval: 'pendingApproval',
  Status.appreoved: 'appreoved',
  Status.completed: 'completed',
};
