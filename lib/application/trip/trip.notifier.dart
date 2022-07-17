import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:injectable/injectable.dart';

final tripProvider = StateNotifierProvider<TripNotifier, TripState>(
    (ref) => getIt<TripNotifier>(param1: ref.read));

@injectable
class TripNotifier extends StateNotifier<TripState> {
  final ITripFacade _iTripFacade;
  final Reader read;
  TripNotifier(@factoryParam this.read, this._iTripFacade)
      : super(TripState.initial());
}
