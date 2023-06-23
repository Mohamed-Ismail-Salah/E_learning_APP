import 'package:dartz/dartz.dart';
 import '../../../../../Core/error/faliure.dart';
import '../models/profile_info_model.dart';

abstract class UpdateAdminProfileRepo {
  Future<Either<Failure,ProfileDataModel>> updateAdminProfile(
      String name,String email,
      String password,String phone);
}