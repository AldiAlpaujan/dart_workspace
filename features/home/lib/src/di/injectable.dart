import 'package:injectable/injectable.dart';

@InjectableInit.microPackage()
initHomePackage() {}

@injectable
class GetUserUseCase {
  String call() => 'Halo dari usecase!';
}
