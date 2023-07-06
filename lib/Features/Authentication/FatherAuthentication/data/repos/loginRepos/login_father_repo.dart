import 'package:dartz/dartz.dart';

import '../../../../../../Core/error/faliure.dart';

abstract class LoginFatherRepo {
  Future<Either<Failure,String>> loginAsFather(String email, String password);
 }
