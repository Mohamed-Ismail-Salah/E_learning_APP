import 'package:dartz/dartz.dart';

import '../../../../../../Core/error/faliure.dart';
import '../../models/userModel.dart';

abstract class SignUpAdminRepo {
  Future<Either<Failure, UserModel>> signUpAsAdmin(
      String name,
      String email,
      String password,
      String phone,
      String type,
      String departmentId,
      );
}
