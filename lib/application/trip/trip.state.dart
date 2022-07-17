import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'trip.state.freezed.dart';

@freezed
class TripState with _$TripState {
  const factory TripState() = _TripState;

  factory TripState.initial() => TripState();
}
