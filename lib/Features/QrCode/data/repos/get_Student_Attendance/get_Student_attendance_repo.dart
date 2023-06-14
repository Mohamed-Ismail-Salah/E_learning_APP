import 'package:dartz/dartz.dart';
import '../../../../../Core/error/faliure.dart';

abstract class  GetStudentAttendanceRepo {
  Future<Either<Failure,List>> getStudentAttendance(String  code,);
}
