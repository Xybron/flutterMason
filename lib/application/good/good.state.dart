import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'good.state.freezed.dart';

@freezed
class GoodState with _$GoodState {
  const factory GoodState() = _GoodState;

  factory GoodState.initial() => GoodState();
}
