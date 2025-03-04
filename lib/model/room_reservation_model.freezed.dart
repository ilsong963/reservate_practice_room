// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'room_reservation_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RoomReservationModel _$RoomReservationModelFromJson(Map<String, dynamic> json) {
  return _RoomReservationModel.fromJson(json);
}

/// @nodoc
mixin _$RoomReservationModel {
  int get roomNumber => throw _privateConstructorUsedError;
  String get reservationName => throw _privateConstructorUsedError;
  int get startTime => throw _privateConstructorUsedError;
  int get endTime => throw _privateConstructorUsedError;
  Status get status => throw _privateConstructorUsedError;

  /// Serializes this RoomReservationModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RoomReservationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RoomReservationModelCopyWith<RoomReservationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomReservationModelCopyWith<$Res> {
  factory $RoomReservationModelCopyWith(RoomReservationModel value,
          $Res Function(RoomReservationModel) then) =
      _$RoomReservationModelCopyWithImpl<$Res, RoomReservationModel>;
  @useResult
  $Res call(
      {int roomNumber,
      String reservationName,
      int startTime,
      int endTime,
      Status status});
}

/// @nodoc
class _$RoomReservationModelCopyWithImpl<$Res,
        $Val extends RoomReservationModel>
    implements $RoomReservationModelCopyWith<$Res> {
  _$RoomReservationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RoomReservationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? roomNumber = null,
    Object? reservationName = null,
    Object? startTime = null,
    Object? endTime = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      roomNumber: null == roomNumber
          ? _value.roomNumber
          : roomNumber // ignore: cast_nullable_to_non_nullable
              as int,
      reservationName: null == reservationName
          ? _value.reservationName
          : reservationName // ignore: cast_nullable_to_non_nullable
              as String,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as int,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RoomReservationModelImplCopyWith<$Res>
    implements $RoomReservationModelCopyWith<$Res> {
  factory _$$RoomReservationModelImplCopyWith(_$RoomReservationModelImpl value,
          $Res Function(_$RoomReservationModelImpl) then) =
      __$$RoomReservationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int roomNumber,
      String reservationName,
      int startTime,
      int endTime,
      Status status});
}

/// @nodoc
class __$$RoomReservationModelImplCopyWithImpl<$Res>
    extends _$RoomReservationModelCopyWithImpl<$Res, _$RoomReservationModelImpl>
    implements _$$RoomReservationModelImplCopyWith<$Res> {
  __$$RoomReservationModelImplCopyWithImpl(_$RoomReservationModelImpl _value,
      $Res Function(_$RoomReservationModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of RoomReservationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? roomNumber = null,
    Object? reservationName = null,
    Object? startTime = null,
    Object? endTime = null,
    Object? status = null,
  }) {
    return _then(_$RoomReservationModelImpl(
      roomNumber: null == roomNumber
          ? _value.roomNumber
          : roomNumber // ignore: cast_nullable_to_non_nullable
              as int,
      reservationName: null == reservationName
          ? _value.reservationName
          : reservationName // ignore: cast_nullable_to_non_nullable
              as String,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as int,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RoomReservationModelImpl implements _RoomReservationModel {
  const _$RoomReservationModelImpl(
      {required this.roomNumber,
      required this.reservationName,
      required this.startTime,
      required this.endTime,
      required this.status});

  factory _$RoomReservationModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RoomReservationModelImplFromJson(json);

  @override
  final int roomNumber;
  @override
  final String reservationName;
  @override
  final int startTime;
  @override
  final int endTime;
  @override
  final Status status;

  @override
  String toString() {
    return 'RoomReservationModel(roomNumber: $roomNumber, reservationName: $reservationName, startTime: $startTime, endTime: $endTime, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoomReservationModelImpl &&
            (identical(other.roomNumber, roomNumber) ||
                other.roomNumber == roomNumber) &&
            (identical(other.reservationName, reservationName) ||
                other.reservationName == reservationName) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, roomNumber, reservationName, startTime, endTime, status);

  /// Create a copy of RoomReservationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RoomReservationModelImplCopyWith<_$RoomReservationModelImpl>
      get copyWith =>
          __$$RoomReservationModelImplCopyWithImpl<_$RoomReservationModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RoomReservationModelImplToJson(
      this,
    );
  }
}

abstract class _RoomReservationModel implements RoomReservationModel {
  const factory _RoomReservationModel(
      {required final int roomNumber,
      required final String reservationName,
      required final int startTime,
      required final int endTime,
      required final Status status}) = _$RoomReservationModelImpl;

  factory _RoomReservationModel.fromJson(Map<String, dynamic> json) =
      _$RoomReservationModelImpl.fromJson;

  @override
  int get roomNumber;
  @override
  String get reservationName;
  @override
  int get startTime;
  @override
  int get endTime;
  @override
  Status get status;

  /// Create a copy of RoomReservationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RoomReservationModelImplCopyWith<_$RoomReservationModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
