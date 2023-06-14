import 'package:dartz/dartz.dart';
import 'package:e_learning/Features/Authentication/data/models/userModel.dart';
import '../../../../../Core/error/faliure.dart';

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
