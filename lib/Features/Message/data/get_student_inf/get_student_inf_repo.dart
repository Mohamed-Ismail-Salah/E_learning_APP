import 'package:dartz/dartz.dart';
import '../../../../../Core/error/faliure.dart';
import '../models/student_inf_model.dart';

abstract class GetStudentIfRepo {
  Future<Either<Failure,List<StudentInfModel>>> getStudent(String name);
}