
import '../../../../../../Core/error/faliure.dart';

abstract class SignUpFatherRepo {
  Future<Failure?> signUpAsFather(
      String name,
      String email,
      String password,
      String phone,
      );
}
