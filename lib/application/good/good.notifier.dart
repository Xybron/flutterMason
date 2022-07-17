import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:injectable/injectable.dart';

final goodProvider = StateNotifierProvider<GoodNotifier, GoodState>(
    (ref) => getIt<GoodNotifier>(param1: ref.read));

@injectable
class GoodNotifier extends StateNotifier<GoodState> {
  final IGoodFacade _iGoodFacade;
  final Reader read;
  GoodNotifier(@factoryParam this.read, this._iGoodFacade)
      : super(GoodState.initial());
}
