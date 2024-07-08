import 'package:injectable/injectable.dart';


@Injectable(as: I{{name.pascalCase()}}Facade)
class {{name.pascalCase()}}LocalDataSource implements I{{name.pascalCase()}}Facade {
  
}
