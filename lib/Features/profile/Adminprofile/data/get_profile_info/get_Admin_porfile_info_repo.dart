import 'package:dartz/dartz.dart';
 import '../../../../../Core/error/faliure.dart';
import '../models/profile_info_model.dart';

abstract class GetAdminProfileInfRepo {
  Future<Either<Failure,ProfileInfoModel>> getAdminProfileIf( );
}