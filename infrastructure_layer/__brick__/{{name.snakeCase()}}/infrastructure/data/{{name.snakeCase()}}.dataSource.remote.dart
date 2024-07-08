import 'package:injectable/injectable.dart';


@Injectable(as: I{{name.pascalCase()}}Facade)
class {{name.pascalCase()}}RemoteDataSource implements I{{name.pascalCase()}}Facade {
  
}
