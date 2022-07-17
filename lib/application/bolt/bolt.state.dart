import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bolt.state.freezed.dart';

@freezed
class BoltState with _$BoltState {
  const factory BoltState() = _BoltState;

  factory BoltState.initial() => BoltState();
}
