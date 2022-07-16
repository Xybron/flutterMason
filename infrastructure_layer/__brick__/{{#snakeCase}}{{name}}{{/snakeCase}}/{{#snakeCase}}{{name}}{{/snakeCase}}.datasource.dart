import 'package:injectable/injectable.dart';


@Injectable(as: I{{name.pascalCase()}}Facade)
class {{name.pascalCase()}}DataSource implements I{{name.pascalCase()}}Facade {
  
}
