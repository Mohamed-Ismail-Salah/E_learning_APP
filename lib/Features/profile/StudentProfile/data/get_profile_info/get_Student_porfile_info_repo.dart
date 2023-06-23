import 'package:dartz/dartz.dart';
 import '../../../../../Core/error/faliure.dart';
import '../models/profile_Student_info_model.dart';

abstract class GetStudentProfileInfRepo {
  Future<Either<Failure,ProfileStudentInfoModel>> getStudentProfileIf( );
}