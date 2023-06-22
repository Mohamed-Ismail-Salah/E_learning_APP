import 'package:dartz/dartz.dart';

import '../../../../../../Core/error/faliure.dart';

abstract class LoginStudentRepo {
  Future<Either<Failure,String>> loginAsStudent(String email, String password);
 }
