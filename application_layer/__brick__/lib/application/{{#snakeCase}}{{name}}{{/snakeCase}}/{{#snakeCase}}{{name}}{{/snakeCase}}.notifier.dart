import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:injectable/injectable.dart';

final {{name.camelCase()}}Provider = StateNotifierProvider<{{name.pascalCase()}}Notifier, {{name.pascalCase()}}State>(
    (ref) => getIt<{{name.pascalCase()}}Notifier>(param1: ref.read));

@injectable
class {{name.pascalCase()}}Notifier extends StateNotifier<{{name.pascalCase()}}State> {
  final I{{name.pascalCase()}}Facade _i{{name.pascalCase()}}Facade;
  final Reader read;
  {{name.pascalCase()}}Notifier(@factoryParam this.read, this._i{{name.pascalCase()}}Facade)
      : super({{name.pascalCase()}}State.initial());
}
