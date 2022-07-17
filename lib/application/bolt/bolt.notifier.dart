import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:injectable/injectable.dart';

final boltProvider = StateNotifierProvider<BoltNotifier, BoltState>(
    (ref) => getIt<BoltNotifier>(param1: ref.read));

@injectable
class BoltNotifier extends StateNotifier<BoltState> {
  final IBoltFacade _iBoltFacade;
  final Reader read;
  BoltNotifier(@factoryParam this.read, this._iBoltFacade)
      : super(BoltState.initial());
}
