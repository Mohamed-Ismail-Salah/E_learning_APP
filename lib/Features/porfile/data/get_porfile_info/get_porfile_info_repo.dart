import 'package:dartz/dartz.dart';
import '../../../../Core/error/faliure.dart';
import '../models/porfile_info_model.dart';

abstract class GetProfileInfRepo {
  Future<Either<Failure,ProfileInfoModel>> getProfileIf();
}