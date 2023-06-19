import 'package:dartz/dartz.dart';
import '../../../../Core/error/faliure.dart';
import '../models/profile_info_model.dart';

abstract class UpdateProfileRepo {
  Future<Either<Failure,ProfileDataModel>> updateProfile(
      String name,String email,
      String password,String phone);
}