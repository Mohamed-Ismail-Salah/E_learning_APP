import 'package:dartz/dartz.dart';

import '../../../../../../Core/error/faliure.dart';

abstract class LoginAdminRepo {
  Future<Either<Failure,String>> loginAsAdmin(String email, String password);
 }
